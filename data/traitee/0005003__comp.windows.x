Archive-name: Xt-FAQ
Version: $Id: FAQ-Xt,v 1.28 93/04/02 12:41:12 ware Exp $
		    The X Toolkit Intrinsics F.A.Q
			  A monthly posting
This article contains the answers to some Frequently Asked Questions
(FAQ) from comp.windows.x about the X Toolkit Intrinsics.  To submit
questions (preferably with an answer) send email to: ware@cis.ohio-state.edu
Many FAQs, including this one, are available on the archive site
rtfm.mit.edu in the directory pub/usenet/news.answers.  The name
under which a FAQ is archived appears in the Archive-name 
line at the top of the article.  This FAQ is archived as Xt-FAQ.
All code fragments are public domain.  
			       Contents
0.  Xt Glossary
1.  Software Versions
2.  Related FAQ's
3.  Why does my application core dump when I use signals/alarms/cthreads?
4.  How do I use a different visual than the default?
5.  Which visual should an application use?
6.  Why do only Shell widgets have a Visual?
7.  Which visual, depth and colormap do Shells inherit?
8.  I've done all the above and I still get a BadMatch error.  Why?
9.  Why doesn't my widget get destroyed when I call XtDestroyWidget()?
10. How do I exit but still execute the DestroyCallbacks?
11. How do I resize a Shell widget?
12. Why can't XtAppAddInput() handle files?
13. What good books and magazines are there on Xt?
14. What Widgets are available?
15. What alternatives to the Intrinsics are there?
16. How do I pass a float value to XtSetValues?
17. How do I write a resource converter?
18. How do I open multiple displays?
19. What changed from R3 to R4 to R5?
20. Where are the resources loaded from?
21. What order are callbacks executed in?
22. How do I know if a widget is visible?
23. How do I reparent a widget in Xt, i.e. XtReparentWidget()?
24. Why use XtMalloc, XtFree, etc?
25. How to debug an Xt application?
26. Why don't XtAddInput(), XtAddTimeout() and XtAddWorkProc() work?
27. What is and how can I implement drag and drop?
0.  Xt Glossary
o The Xt Intrinsics implement an object oriented interface to C code
  to allow useful graphical components to be created.  Included with
  this are classes that provide the base functionality: Object,
  RectObj, Core, Composite, Constraint, Shell, OverrideShell, WMShell,
  etc.  The terms "Xt" and "Intrinsics" are used interchangeably,
  however, they are used very precisely to mean a specific library of the X
  window system.  In particular, it does not include the Athena,
  Motif, OLIT or any other widget set.  Without further widgets the
  Intrinsics are not especially useful.
o A widget refers to a user interface abstraction created via Xt.  The
  precise use, is any object that is a subclass of the Core class.  It
  is used loosely to refer to anything that is a subclass of the
  Object class although these are more accurately called windowless
  widgets or gadgets.
o Xlib is the C interface to the X11 protocol.  It is one layer below
  the Xt Intrinsics.  Typically a widget uses relatively few Xlib
  functions because Xt provides most such services although an
  understanding of Xlib helps with problems.
1.  Software Versions
The following are the latest versions of Xt based software:
	Software	Version		Released	Next Expected
	X11R4		patch 18			(none)
	X11R5		patch 21	12/18/92	??
	Athena Widgets	(see X11R5)
	Motif		1.2.1		9/92		??
	Xtra		2.5		6/15/92		??
	Xw		X11R4				(none)
	Xcu		X11R5				(none)
2.  Related FAQ's
David B. Lewis (uunet!craft!faq) maintains the FAQ on X.  It
is posted monthly on comp.windows.x and located on export in contrib/FAQ.
Liam R. E. Quin (lee@sq.sq.com) posts an FAQ list on Open Look to 
comp.windows.x.  
Jan Newmarch (jan@pandonia.canberra.edu.au) posts an FAQ list on Motif 
to comp.windows.x.motif.
Peter Ware (ware@cis.ohio-state.edu) posts an FAQ list for
comp.windows.x.intrinsics; it is on export in contrib/FAQ-Xt.
3.  Why does my application core dump when I use signals/alarms/cthreads?
In brief, Xlib, Xt and most widget sets have no mutual exclusion for
critical sections.  Any interrupt handler is likely to leave one of
the above libraries in an inconsistent state -- such as all the
appropriate flags not yet set, dangling pointers, in the middle of a
list traversal, etc.  Note that the ANSI C standard points out that
behavior of a signal handler is undefined if the signal handler calls
any function other than signal() itself, so this is not a problem
specific to Xlib and Xt; the POSIX specification mentions other
functions which may be called safely but it may not be assumed that
these functions are called by Xlib or Xt functions.
The only safe way to deal with signals is to set a flag in the
interrupt handler.  This flag later needs to be checked either by a
work procedure or a timeout callback.  It is incorrect to add either
of these in the interrupt handler.  As another note, it is dangerous
to add a work procedure that never finishes.  This effectively
preempts any work procedures previously added and so they will never
be called.  Another option is to open a pipe, tell the event loop
about the read end using XtAppAddInput() and then the signal handler
can write a byte to the write end of the pipe for each signal.
However, this could deadlock your process if the pipe fills up.
Why don't the Intrinsics deal with this problem?  Primarily because it
is supposed to be a portable layer to any hardware and operating
system.   Is that a good enough reason -- I don't think so.
        Note: the article in The X Journal 1:4 and the example in O'Reilly
Volume 6 are in error.
4.  How do I use a different visual than the default?
This requires a more complicated answer than it should.  A window has
three things that are visual specific -- the visual, colormap and
border pixmap.  All widgets have their own Colormap and BorderPixmap
resource; only shell widgets have Visual resources (another questions
deals with why shells have a Visual).  The default value of these
resources is CopyFromParent which does exactly what it says.  In the
shell widget CopyFromParent gets evalulated as DefaultVisualOfScreen
and DefaultColormapOfScreen.  When any one of the three resources is
not properly set, a BadMatch error occurs when the window is
created.  They are not properly set because each of the values depends
on the visual being used.  
How to get this to work?  There are two parts to the answer.  The
first is if you want an application to start with a particular visual
and the second is if you want a particular shell within an application
to start with a different visual.  The second is actually easier
because the basic information you need is available.  The first is a
little harder because you'll need to initialize much of the toolkit
yourself in order to determine the needed information.
 * Some sample code to start up an application using something other
 * than the default visual.
 * To compile:
 *	cc -g visual.c -o visual -lXaw -lXmu -lXt -lXext -lX11 -lm
 * To run:
 *	./visual -geometry 300x300 -depth 24 -visual StaticColor -fg blue -bg yellow
 * you need to move the mouse to get the particular visuals colormap
 * to install.
#include <X11/Intrinsic.h>
#include <X11/StringDefs.h>
#include <X11/Shell.h>
typedef struct
	Visual	*visual;
	int	depth;
} OptionsRec;
OptionsRec	Options;
XtResource resources[] =
	{"visual", "Visual", XtRVisual, sizeof (Visual *),
	XtOffsetOf (OptionsRec, visual), XtRImmediate, NULL},
	{"depth", "Depth", XtRInt, sizeof (int),
	XtOffsetOf (OptionsRec, depth), XtRImmediate, NULL},
XrmOptionDescRec Desc[] =
	{"-visual", "*visual", XrmoptionSepArg, NULL},
	{"-depth", "*depth", XrmoptionSepArg, NULL}
int
main (argc, argv)
	int		argc;
	char		**argv;
	XtAppContext	app;		/* the application context */
	Widget		top;		/* toplevel widget */
	Display		*dpy;		/* display */
	char		**xargv;	/* saved argument vector */
	int		xargc;		/* saved argument count */
	Colormap	colormap;	/* created colormap */
	XVisualInfo	vinfo;		/* template for find visual */
	XVisualInfo	*vinfo_list;	/* returned list of visuals */
	int		count;		/* number of matchs (only 1?) */
	Arg		args[10];
	Cardinal	cnt;
	char		*name = "test";
	char		*class = "Test";
	 * save the command line arguments
	xargc = argc;
	xargv = (char **) XtMalloc (argc * sizeof (char *));
	bcopy ((char *) argv, (char *) xargv, argc * sizeof (char *));
	 * The following creates a _dummy_ toplevel widget so we can
	 * retrieve the appropriate visual resource.
	top = XtAppInitialize (&app, class, Desc, XtNumber (Desc), &argc, argv,
			       (String *) NULL, args, cnt);
	dpy = XtDisplay (top);
	XtGetApplicationResources (top, &Options, resources,
				   XtNumber (resources),
				   args, cnt);
	if (Options.visual && Options.visual != DefaultVisualOfScreen (XtScreen (top)))
		XtSetArg (args[cnt], XtNvisual, Options.visual); ++cnt;
		 * Now we create an appropriate colormap.  We could
		 * use a default colormap based on the class of the
		 * visual; we could examine some property on the
		 * rootwindow to find the right colormap; we could
		 * do all sorts of things...
		colormap = XCreateColormap (dpy,
					    RootWindowOfScreen (XtScreen (top)),
					    Options.visual,
					    AllocNone);
		XtSetArg (args[cnt], XtNcolormap, colormap); ++cnt;
		 * Now find some information about the visual.
		vinfo.visualid = XVisualIDFromVisual (Options.visual);
		vinfo_list = XGetVisualInfo (dpy, VisualIDMask, &vinfo, &count);
		if (vinfo_list && count > 0)
			XtSetArg (args[cnt], XtNdepth, vinfo_list[0].depth);
			XFree ((XPointer) vinfo_list);
	XtDestroyWidget (top);
	 * Now create the real toplevel widget.
	XtSetArg (args[cnt], XtNargv, xargv); ++cnt;
	XtSetArg (args[cnt], XtNargc, xargc); ++cnt;
	top = XtAppCreateShell ((char *) NULL, class,
				applicationShellWidgetClass,
				dpy, args, cnt);
	 * Display the application and loop handling all events.
	XtRealizeWidget (top);
	XtAppMainLoop (app);
	return (0);
5.  Which visual should an application use?
This is a point that can be argued about but one opinion is there is
no way for an application to know the appropriate visual -- it has to
be specified by the user.  If you disagree with this then your
application probably falls into the category of always using the
default visual or it is hardware specific and expects some particular
visual such as 24bit TrueColor with an OverlayPlane extension (or some
such).
Why?  No application runs in isolation.  Depending on the way a server
allocates resources I may not always want your application to run in
TrueColor mode if it is going to mess up my other applications.  I may
be very upset if it chooses to run in GreyScale instead of PsuedoColor
or just monochrome.
As an example, on a low end color Sun server there are many different
possible visuals: monochrome, 256 entry colormap, static gray, static
color, and a 3/3/2 TrueColor.  The SGI Iris's offer all the above 
plus 12 bit TrueColor, 24 bit TrueColor, an Overlay Plane.
6.  Why do only Shell widgets have a Visual?
This is strictly by convention.  It makes it possible for an arbitrary
widget to know that the visual it uses can be found by looking for the
shell widget that is its ancestor and obtaining the visual of that
shell.
A widget can have its own visual resource.  If it does, it must have
its own realize method to use the visual when it calls
XCreateWindow().  You should also make this a resource that can be
obtained with XtGetValues() so other widgets can find it.  A
reasonable value is probably XtNvisual.
7.  Which visual, depth and colormap do Shells inherit?
The default value for these resources are set to CopyFromParent.  This
is interpreted as the DefaultColormapOfScreen(), DefaultDepthOfScreen()
and the default visual of the screen if the widget has no parent -- i.e.
it is an applicationShellWidgetClass and the root of your widget tree.
If the parent of the widget is not null, then the shell copies
colormap and depth from its parent and uses CopyFromParent as the
visual.
8.  I've done all the above and I still get a BadMatch error.  Why?
Some resource converters improperly cache references.  This was
especially true of X11R3 and earlier versions of Motif.
9.  Why doesn't my widget get destroyed when I call XtDestroyWidget()?
See section 2.8 of the Xt specification.
It eventually does get destroyed, just not immediately.  The
Intrinsics destroy a widget in a two-phase process.  First it and all
of its children have a flag set that indicate it is being destroyed.
It is then put on a list of widgets to be destroyed.  This way any
pending X events or further references to that widget can be cleaned
up before the memory is actually freed.  The second phase is then
performed after all callbacks, event handlers, and actions have
completed, before checking for the next X event.  At this point the
list is traversed and each widget's memory is actually free()'d, among
other things.
As some further caveats/trivia, the widgets may be destroyed if the
Intrinsics determine that they have no further references to the
widgets on the list.  If so, then the phase 2 destruction occurs
immediately.  Also, if nested event loops are used, widgets placed on
the destroy list before entering the inner event loop are not
destroyed until returning to the outer event loop.
10. How do I exit but still execute the DestroyCallbacks?
The problem is if a simple and entirely reasonable approach to exiting
an application is used, such as calling exit() directly, then a widget
may not have a chance to clean up any external state -- such as open
sockets, temporary files, allocated X resources, etc.  (this code for
simplicity reasons assumes only a single toplevel widget):
	Widget
	ToplevelGet (gw)
		Widget		gw;		/* widget to find toplevel */
		Widget		top;
		for (top = gw; XtParent (top); top = XtParent (top))
			/* empty */;
		return (top);
	void
	ExitCallback (gw, closure, call_data)
		Widget		gw;		/* widget */
		XtPointer	closure;	/* data the app specified */
		XtPointer	call_data;	/* widget specific data */
		Widget		toplevel;
		toplevel = ToplevelGet (gw);
		XtUnmapWidget (toplevel);	/* make it disappear quickly */
		XtDestroyWidget (toplevel);
		exit (0);
One can see that the above code exit's immediately after destroying
the toplevel widget.  The trouble is the phase 2 destruction may never
occur.  
This works for most widgets and most applications but will not work
for those widgets that have any external state.  You might think that
since it works now it will always work but remember that part of the
reason an object oriented approach is used is so one can be ignorant
of the implementation details for each widget.  Which means that the
widget may change and someday require that some external state is
cleaned up by the Destroy callbacks.
One alternative is to modify ExitCallback() to set a global flag and
then test for that flag in a private event loop.  However, private
event loops are frowned upon because it tends to encourage sloppy, and
difficult to maintain practices.
Try the following code instead.
	#include <X11/Intrinsic.h>
	extern Widget ToplevelGet (
	#if NeedFunctionPrototypes
		Widget		gw
	#endif
	extern Boolean ExitWorkProc (
	#if NeedFunctionPrototypes
		XtPointer	closure
	#endif
	extern void ExitCallback (
	#if NeedFunctionPrototypes
		Widget		gw,
		XtPointer	closure,
		XtPointer	call_data
	#endif
	Widget
	ToplevelGet (gw)
	Widget		gw;		/* widget to find toplevel */
		Widget		top;
		for (top = gw; XtParent (top); top = XtParent (top))
			/* empty */;
		return (top);
	void
	ExitCallback (gw, closure, call_data)
	Widget		gw;		/* widget */
	XtPointer	closure;	/* data the app specified */
	XtPointer	call_data;	/* widget specific data */
		Widget		toplevel;
		toplevel = ToplevelGet (gw);
		XtUnmapWidget (toplevel);	/* make it disappear quickly */
		XtDestroyWidget (toplevel);
		XtAppAddWorkProc (XtWidgetToApplicationContext (gw),
				  ExitWorkProc, (XtPointer) NULL);
	Boolean
	ExitWorkProc (closure)
		XtPointer	closure;
		exit (0);
ExitCallback() adds a work procedure that will get called when the
application is next idle -- which happens after all the events are
processed and the destroy callbacks are executed.
11. How do I resize a Shell widget?
After it is realized, one doesn't resize a Shell widget.  The proper
thing is to resize the currently managed child of the Shell widget
using XtSetValues().  The geometry change is then propagated to the
Shell which asks the window manager which may or may not allow the
request.  However, the Shell must have the resource
XtNallowShellResize set to True otherwise it will not even ask the
window manager to grant the request and the Shell will not resize.
To change the position of a Shell, use XtSetValues() on the Shell, not
the child, and within the limits of the window manager it should be granted.
12. Why can't XtAppAddInput() handle files?
It does, however Unix semantics for when I/O is ready for a file does
not fit most peoples' intuitive model.  In Unix terms a file
descriptor is ready for reading whenever the read() call would not
block, ignoring the setting of optional flags that indicate not to
block.  This works as expected for terminals, sockets and pipes.  For
a file the read() will always return but the return indicates an EOF
-- i.e. no more data.  The result is the code in the Intrinsics always
calls the input handler because it always thinks something is about to
be read.  The culprit is the select() system call or on SYSV based
OS's it is the poll() system call.
How to get around this on a Unix system?  The best approach is to use
another process to check for available input on the file.  Use a pipe
to connect the application with this other process and pass the file
descriptor from the pipe to XtAppAddInput().  A suitable program on
BSD systems is "tail -f filename".
It's rumored that select() on some systems is not _completely_
reliable.  In particular:
	- IBM AIX 3.1: this is one where it would work for a while
	  (several thousand times) and then stop until some other
	  event woke it up. This seemed to be the result of a race
	  condition in the Kernel.  IBM claims to have a fix for this.
	- Pyramid, doesn't work at all.
	- Ultrix (and possibly others where pipes are implemented as
	  sockets), wasn't completely broken, but although the writing
	  side wrote in 512 byte blocks the reading side received it
	  all broken up as if it was being put into the pipe a byte at
	  a time.  You can waste a lot of time by reading small blocks
	  (get raound it by detecting the situation and having
	  select() ignore the pipe for 10 mseconds - by then it had
	  been given the whole block).
Note that all the above descriptions used Unix terminology such as
read(), file descriptor, pipes, etc.  This is an OS dependent area and
may not be identical on all systems.  However the Intrinsic designers
felt it was a common enough operation that it should be included with
part of the toolkit.  Why they didn't also deal with signals at this
point I don't know.
13. What good books and magazines are there on Xt?
I have a favorite that is the definitive reference.  To my perspective
it offers a reasonable introduction but also goes into the full
details of the Intrinsics.  When I started using it I was already
familiar with Xt and the concepts behind it, so newcomers may or may
not find it useful.  I've always found it accurate and complete, which
means its a 1000 pages.
Asente, Paul J., and Swick, Ralph R., "X Window System Toolkit, The
	Complete Programmer's Guide and Specification", Digital Press,
	1990, ISBN 1-55558-051-3, order number EY-E757E-DP; and by
	Prentice-Hall, ISBN 0-13-972191-6. Also available through DEC
	Direct at 1-800-DIGITAL.
The other book I commonly recomend to novices is:
Young, Doug. "The X Window System: Applications and Programming with
	Xt (Motif Version)," Prentice Hall, 1989 (ISBN 0-13-497074-8).
And of course O'Reilly has an entire series of manuals on X and Xt.
O'Reilly ordering is 800-998-9938.  In particular, Volume 5 is an Xt
reference done in manual page style.  The 3rd edition is extensively
overhauled and goes far beyond the MIT manual pages.  I'm finding it
very useful.  In particular, the permutted index and references to
other manual pages help a great deal in chasing down related
information.
I read two periodicals, "The X Resource" and the "The X Journal".
These are the only two dealing specifically with X.  "The X Resource"
is published quarterly, by O'Reilly, with one of the issues being the
MIT X Consortium Technical Conference Proceedings.  There is no
advertising.  I've found it informative with pretty good depth.  For
orders, call 1-800-998-9938, or email cathyr@ora.com.  For editorial
matters, email adrian@ora.com.  Table of contents are posted at
math.utah.edu in ~ftp/pub/tex/bib in TeX form and on ftp.uu.net in
~ftp/published/oreilly/xresource in ASCII form.
"The X Journal" is a bimonthly trade rag with lots of advertising.
The articles are informative and oriented toward a less technical
audience.  I read it more to see what's going on then with an
expectation of learning a great deal (but remember, I represent a
fairly small percentage of people).  Also, they have a pretty good
collection of people on the advisory board and as columnists.  Call
14. What Widgets are available?
There are three popular widget sets:
Athena	- The set provided with X11.  This is sufficient for most
	  purposes but is on the ugly side.  Recently, a 3d look is
	  available for ftp on export.lcs.mit.edu:/contrib/Xaw3d.tar.Z.
Motif	- From OSF available for a license fee and commonly shipped on
	  many workstation vendors platforms (almost everyone but
	  Sun).  It looks good and works well but personally I think
	  it is poorly implemented.
OLIT	- The Open Look Intrinsics Toolkit is a set of widgets
	  implementing Sun's Open Look specification.  Developed by
	  AT&T.  I've never used it so can't comment on its quality.
	  I've heard rumours that it is a pain to actually get.
In addition the following collection of widgets are also available:
Xtra	- a library of widgets for sale from Graphical Software
	  Technology (310-328-9338).  It includes bar graph, stacked
	  bar graph, line graph, pie chart, xy plot, hypertext, help,
	  spreadsheet, and data entry form widgets.  I've never seen
	  them so I can't comment.
FWF	- The Free Widget Foundation is attempting to collect a set of
	  freely available widgets.  Included are a Pixmap editor,
	  FileDialog, and a few others.  The current set of widgets
	  can be obtained via anonymous ftp from the machine
	  a.cs.uiuc.edu (128.174.252.1) in the file pub/fwf.shar.Z.
Xcu	- The Cornell University widgets from Gene Dykes.  One of the
	  early widget sets released.  Provides a nice appearance for
	  buttons and has a mini command language.  Probably not so
	  widely used.
Xs	- The Sony widget set.  This was around during R3 days but
	  seemed to disappear.  It looked like it had promise.
Xw	- The HP widgets.  The precursor to Motif.  Originally written
	  for R3 there exists diffs to get it to work under R4 & R5.
	  Again, a pretty good widget set but has more or less died.
	  The precursor to this was the Xray toolkit which was
	  originally implemented for X10R4 and apparently provided
	  much experience for the designers of Xt.
Xo	- A widget set I'm working on.  It's still primitive but you
	  can give it a try in archive.cis.ohio-state.edu:pub/Xo/*
The following specialized widgets are also available:
Tbl	- Implements a tabular layout of widgets.  Supports Motif
	  widgets as children.  Part of Wcl.
Plots	- The Athena Plotting widgets (not the Athena widgets).
	  Contact gnb@bby.oz.au or joe@Athena.MIT.EDU.
15. What alternatives to the Intrinsics are there?
	Name		Language	Vendor
	Xview		C		Sun
	OI		C++		ParcPlace
	Interviews	C++		Stanford
	Tcl/tk		C		sprite.berkeley.edu
However much I like C and admire the skill in both designing and
implementing the Intrinsics, hopefully some alternative will develop
in the next 3-5 years that uses an object oriented language.  Keep
your eyes open and expect some change about the same time a language
other than C _starts_ gaining acceptance.
16. How do I pass a float value to XtSetValues?
First, what is going wrong is the structure for an Arg is (essentially)
	typdef struct
	    String	name;
	    long	value;
and the code:
	Arg	arg;
	XtSetArg (arg, "name", 3.2)
expands to
	Arg	arg;
	arg.name = "name";
	arg.value = 3.2;
you can see that with normal C type conversions, the arg.value
gets the integer "3" instead of the floating point value "3.2".  When
the value is copied into the widget resource, the bit pattern is
wildly different than that required for a floating point value.  So,
how to get around this?
The following macro is from the Athena widgets document and I am now
recomending it over the previous suggestions.
#define XtSetFloatArg(arg, n, d) \
    if (sizeof(float) > sizeof(XtArgVal)) { \
        XtSetArg(arg, n, &(d)); \
    } else { \
        XtArgVal *ld = (XtArgVal *)&(d); \
        XtSetArg(arg, n, *ld); \
17. How do I write a resource converter?
Courtesy of Rich Thomson (rthomson@dsd.es.com):
The following discussion of resource converters assumes R4 (or R5)
Intrinsics.  Resource converters changed between R3 and R4 to allow
for destructors and caching of converted values.
There are several main types of resource converters:
    string to data type
    data type to string
    data type to data type
i) string to data type
    Usually a string to data type converter has a fixed set of strings
    that will be converted to data type values.  This is most often
    used to map enumerated names to enumerated values:
	Name		Value
	"True"		1
	"False"		0
    In this case, the string to data type converter needs to compare
    the resource value to the list of fixed strings.  This is most
    readily accomplished by the use of the "quark" mechanism of the
    resource manager.  The resource value is turned into a quark,
    which is a unique representation of the string that fits into a
    single word.  Then the resource quark is compared against the
    quarks for the fixed strings representing the enumerated values.
    If there are many enumerated strings in the converter (or many
    converters, each with a small number of enumeration strings), then
    a global initialization routine might be used to turn all the
    resource strings into quarks.  That way, the first time one of
    these converters is used, the strings will be turned into quarks
    and held in static variables for use in the next invocation of one
    of the converters.
ii) data type to string
    This type of converter is slightly easier than the string to data
    type converters since the use of quarks isn't necessary.  Instead,
    the data type value is simply converted to a string value,
    probably by the use of sprintf.
    Data type to string converters are useful for applications that
    wish to convert an internal data type value into a string so that
    they can write out a valid resource specification to a file.  This
    mechanism can be used to provide a "snapshot" of application state
    into a file.  This snapshot can be used to restore the program to
    a known state via the usual X resource database mechanisms.
    If you are taking the trouble to write a string to data type
    converter, it isn't much extra effort to write the data type to
    string converter.  Writing both at the same time helps to ensure
    that they are consistent.
iii) data type to data type
    This type of converter is used to convert an existing data type
    value to another data type.  For instance, an X pixel value can be
    converted to an RGB data type that contains separate fields for
    red, green and blue.
The type signature for a resource converter is as follows:
typedef Boolean (*XtTypeConverter)(Display *, XrmValuePtr, Cardinal *,
	XrmValuePtr, XrmValuePtr, XtPointer *);
    Display *dpy;
    XrmValuePtr args;
    Cardinal *num_args;
    XrmValuePtr fromVal;
    XrmValuePtr toVal;
    XtPointer *converter_data;
When the converter is invoked, the "fromVal" argument points to the source
X resource manager value and the "toVal" argument points to the
destination X resource manager value.  The "converter_data" argument
is an opaque pointer to some converter-specific data that is specified
when the converter is registered.  The "args" and "num_args" arguments
allow extra information to be passed to the converter when it is
invoked.  For instance, the Pixel to RGB structure converter discussed
above would need colormap and visual arguments in which to lookup the
Pixel to obtain the RGB values corresponding to that pixel.
Care must be taken with the "toVal" argument.  An XrmValue has the
following type definition and specifies a size and location for a
converted value:
typedef struct {
    unsigned int    size;
    caddr_t         addr;
} XrmValue, *XrmValuePtr;
When the converter is invoked, the address may point to a location of
the given size for the converted value or the location can be NULL.
In the former case, the converter should ensure that the size of the
destination area is large enough to handle the converted value.  If
the destination area is not large enough, then the converter should
set the size to the amount of space needed and return False.  The
caller can then ensure that enough space is allocated and reinvoke the
converter.  If the size is large enough, then the converter can simply
copy the converted value into the space given and return True.
If the location is NULL, then the converter can assign the location to
the address of a static variable containing the converted value and
return True.
When writing a group of converters, this code is often repeated and it
becomes convenient to define a macro:
    #define DONE(var, type) \
      if (toVal->addr) \
	  if (toVal->size < sizeof(type)) \
	      toVal->size = sizeof(type); \
	      return False; \
	  else \
	    *((type *) toVal->addr) = var; \
      else \
	toVal->addr = (caddr_t) &var; \
      toVal->size = sizeof(type); \
      return True;
    #define DONESTR(str) \
      if (toVal->addr && toVal->size < sizeof(String)) \
	  toVal->size = sizeof(String); \
	  return False; \
      else \
	toVal->addr = (caddr_t) str; \
      toVal->size = sizeof(String); \
      return True;
Inside the converter, it is a good idea to perform a little safety
checking on the "num_args" and "args" arguments to ensure that your
converter is being called properly.
Once you have written your converter, you need to register it with the
Intrinsics.  The Intrinsics invokes resource converters when creating
widgets and fetching their resource values from the resource database.
To register a converter with a single application context, use
XtAppSetTypeConverter:
void XtAppSetTypeConverter(context, from, to, converter, args, num_args,
	cache, destructor)
    XtAppContext context;
    String from;
    String to;
    XtTypeConverter converter;
    XtConvertArgList args;
    Cardinal num_args;
    XtCacheType cache;
    XtDestructor destructor;
To register a converter with all application contexts, use
XtSetTypeConverter:
void XtSetTypeConverter(from, to, converter, args, num_args,
	cache, destructor)
    String from;
    String to;
    XtTypeConverter converter;
    XtConvertArgList args;
    Cardinal num_args;
    XtCacheType cache;
    XtDestructor destructor;
In the R3 Intrinsics, there were the routines XtAppAddConverter and
XtAddConverter; these have been superseded by XtAppSetTypeConverter
and XtSetTypeConverter.  Whenever possible, the newer routines should be
used.
When a converter is registered with the Intrinsics, a "cache" argument
specifies how converted resource values are to be cached:
    XtCacheNone		Don't cache any converted values
    XtCacheAll		Cache all converted values
    XtCacheByDisplay	Cache converted values on a per display basis
Caching converted values that require a round-trip to the server is a
good idea (for instance string to Pixel conversions).
The "destructor" argument is a routine that is invoked then the
resource is destroyed, either because its cached reference count has
been decremented to zero or because the widget owning the value is
being destroyed.  XtDestructor has the following type definition:
typedef void (*XtDestructor)(XtAppContext, XrmValuePtr, XtPointer,
	XrmValuePtr, Cardinal *);
    XtAppContext context;
    XrmValuePtr to;
    XtPointer converter_data;
    XrmValuePtr args;
    Cardinal *num_args;
The destructor is invoked to free any auxiliary storage associated
with the "to" argument, but does not actually free the storage pointed
to by the "to" argument itself (to->addr).  The destructor is passed
the extra arguments that were passed to the converter when the
conversion was performed (for instance, colormap and visual arguments
for the string to Pixel converter since the destructor would need to
free the allocated Pixel from the colormap) as well as the private
data passed in when the converter was registered.
Sample converter code can be found in the following files in the MIT
R5 distribution:
    mit/lib/Xt/Converters.c
    contrib/lib/PEXt/Converters.c
    contrib/lib/PEXt/Converters.h
18. How do I open multiple displays?
See "Multi-user Application Software Using Xt", The X Resource, Issue 3,
(Summer 1992) by Oliver Jones for a complete coverage of the issues
involved.  Most of this answer is based on that article.  In a
nutshell, one uses XtOpenDisplay() to add each display to a _single_
application context and then XtCloseDisplay() to shutdown each display
and remove it from the application context.
The real problems occur when trying to close down a display.  This can
happen 3 ways:
	1. User selects a "quit" button on one of the displays,
	2. User has window manager send a WM_DELETE_WINDOW message,
	3. Server disconnect -- possibly from a KillClient message,
	   server shutdown/crash, or network failure.
I'll assume you can deal gracefully with 1 & 2 since it is _merely_ a
problem of translating a Widget to a display and removing that
display.  If not, then read the Oliver Jones article.
The third one is difficult to handle.  The following is based on the
Oliver Jones article and I include it here because it is a difficult
problem.
The difficulty arises because the Xlib design presumed that an I/O
error is always unrecoverable and so fatal.  This is essentially true
for a single display X based application, but not true for a
multiple display program or an application that does things other than
display information on an X server.  When an X I/O error occurs the
I/O error handler is called and _if_ it returns then an exit()
happens.  The only way around this is to use setjmp/longjmp to avoid
returning to the I/O error handler.  The following code fragment
demonstrates this:
#include <setjmp.h>
jmp_buf XIOrecover;
void
XIOHandler (dpy)
	Display		*dpy;
	destroyDisplay (dpy);
	longjmp (XIOrecover, 1);
main ()
	if (setjmp (XIOrecover) == 0)
		XSetIOErrorHandler (XIOHandler);
	XtAppMainLoop (app_context);
The destroyDisplay() is something that given a Display pointer can go
back to the application specific data and perform any necessary
cleanup.  It should also call XtCloseDisplay().
For those of you unfamiliar with setjmp/longjmp, when setjmp() is
first called it returns a 0 and save's enough information in the
jmp_buf that a latter execution of longjmp() can return the program to
the same state as if the setjmp() was just executed.  The return value
of this second setjmp() is the value of the second argument to
longjmp().  There are several caveats about using these but for this
purpose it is adequate.
Some other problems you might run into are resource converters that
improperly cache resources.  The most likely symptoms are Xlib errors
such as BadColor, BadAtom, or BadFont.  There may be problems with the
total number of displays you can open since typically only a limited
number of file descriptors are available with 32 being a typical
value.  You may also run into authorization problems when trying to
connect to a display.
There was much discussion in comp.windows.x about this topic in
November of 91.  Robert Scheifler posted an article which basically
said this is the way it will be and Xlib will not change.
19. What changed from R3 to R4 to R5?
This addresses only changes in the Intrinsics.  First, the general
changes for each release are described.  Then a, certainly incomplete,
list of new functions added and others that are now deprecated are
listed.  Brevity is a primary goal.
Much of the following information is retrieved from Chapter 13 of the MIT
Xt Intrinsics Manual and from O'Reilly Volume 5, 3rd edition.
From R3 to R4
- Addition of gadgets (windowless widgets)
- New resource type converter interface to handle cacheing and
  additional  data.
- Variable argument list interface.
- #define XtSpecificationRelease 4  (added with this release)
- WMShellPart, TopLevelShellPart & TransientShellPart changed
  incompatibly.
- core.initialize, core.set_values added ArgList and count parameters
- event handlers had continue_to_dispatch parameter added
- core.set_values_almost specification changed.
- core.compress_exposure changed to an enumerated data type from Boolean
- core.class_inited changed to enumerated data type from Boolean
- constraint.get_values_hook added to extension record
- core.initialize_hook obsolete as info is passed to core.initialize
- shell.root_geometry_manager added to extension record
- core.set_values_hook obsolete as info is passed to core.set_values
- Calling XtQueryGeometry() must store complete geometry.
- Added UnrealizeCallback.
- XtTranslateCoords() actually works under R4.
From R4 to R5:
- Psuedo resource baseTranslation added.
- Searching for app-default, and other files, made more flexible
- customization resource added.
- Per-screen resource database.
- Support permanently allocated strings.
- Permanetly allocated strings required for several class fields.
- The args argument to XtAppInitialize, XtVaAppInitialize,
  XtOpenDisplay, XtDisplayInitialize, and XtInitialize were changed
  from Cardinal* to int*
- Many performance improvements (this is summarized from the article
  "Xt Performance Improvements in Release 5" by Gabe Beged-Dov in "The
  X Resource", Issue 3):
	- XrmStringToQuark() augmented with XrmPermStringToQuark() to
	  avoid string copies.  Several fields in the class record are
	  indicated as needing permanent strings.
	- Using an array of Strings for resources
	- Callback lists redesigned to use less memory
	- Translation manager redesigned and rewritten so it takes
	  less memory, translation tables merges are faster, cache of
	  action bindings
	- Keycode to Keysyms are cached.
	- Better sharing of GC's with modifiable fields
	- Window to Widget translation uses less space and faster
	- Does not malloc space for widget name since quark is available
	- Widget space is allocated to include the constraints
	- Over several example programs, about a 26% reduction in
	  memory usage.
Functions new with R5:
XtAllocateGC()		- sharable GC with modifiable fields  
XtGetActionList()	- get the action table of a class
XtScreenDatabase()	- return resource database for a screen
XtSetLanguageProc()	- register language procedure called to set locale
Functions new with R4:
XtAppAddActionHook()	- procedure to call before _every_ action.
XtAppInitialize()	- lots of initialization work.
XtAppReleaseCacheRefs()	- decrement cache reference count for converter
XtAppSetFallbackResources() - specify default resources
XtAppSetTypeConverter()	- register a new style converter
XtCallCallbackList()	- directly execute a callback list
XtCallConverter	()	- invoke a new style converter
XtCallbackReleaseCacheRef() - release a cached resource value
XtCallbackReleaseCacheRefList() - release a list of cached resource values
XtConvertAndStore()	- find and call a resource converter
XtDirectConvert()	- Invoke old-style converter
XtDisplayOfObject()	- Return the display
XtDisplayStringConversionWarning() - issue a warning about conversion
XtFindFile()		- Find a file
XtGetActionKeysym()	- Retrieve keysym & modifies for this action
XtGetApplicationNameAndClass() - return name and class
XtGetConstraintResourceList() - get constraints for a widget
XtGetKeysymTable()	- return keycode-to-keysym mapping table
XtGetMultiClickTime()	- read the multi-click time
XtGetSelectionRequest()	- retrieve the SelectionRequest event
XtGetSelectionValueIncremental() - obtain the selection value incrementally
XtGetSelectionValuesIncremental() - obtain the selection value incrementally
XtInitializeWidgetClass() - initialize a widget class manually
XtInsertEventHanlder()	- register event handler before/after others
XtInsertRawEventHandler() - register event handler without modify input mask
XtIsObject()		- test if subclass of Object
XtIsRectObj()		- test if subclass of RectObj
XtKeysymToKeyCodeList()	- return list of keycodes
XtLastTimestampProcessed() - retrieve most recent event time
XtMenuPopdown		- Action for popping down a widget
XtMenuPopup		- Action for popping up a widget
XtOffsetOf		- macro for structure offsets
XtOwnSelectionIncremental() - make selection data availabe incrementally
XtPoupSpringLoaded()	- map a spring-loaded popup
XtRegisterGrabAction()	- indicate action procedure needs a passive grab
XtRemoveActiohHook()	- remove function called after every action
XtResolvePathname()	- find a file
XtScreenOfObject()	- return screen of object.
XtSetMultiClickTime()	- set the multi-click time
XtSetWMColormapWindows() - set WM_COLORMAP_WINDOWS for custom colormaps
XtUngrabButton()	- cancel a passive button grab
XtUngrabKey()		- cancel a passive key grab
XtUngrabKeybard()	- release an active keyboard grab
XtUngrabPointer()	- release an active pointer grab
XtVa*()			- varags interfaces to a bunch of functions
XtWindowOfObject()	- return Window of nearest widget ancestor
Deprecated		Replacement			When
XtAddActions()		XtAppAddActions()		R3
XtAddConverter()	XtAppAddConverter()		R3
XtAddInput()		XtAppAddInput ()		R3
XtAddTimeout()		XtAppAddTimeout()		R3
XtAddWorkProc()		XtAppAddWorkProc()		R3
XtConvert()		XtConvertAndStore()		R4
XtCreateApplicationShell XtAppCreateShell()		R3
XtDestroyGC()		XtReleaseGC()			R3
XtError()		XtAppError()			R3
XtGetErrorDatabase()	XtAppGetErrorDatabase		R3
XtGetErrorDatabaseText() XtAppGetErrorDatabaseText	R3
XtGetSelectionTimeout()	XtAppGetSelectionTimeout	R3
XtInitialize()		XtAppInitialize()		R3
XtMainLoop()		XtAppMainLoop()			R3
MenuPopdown(action)	XtMenuPopdown(action)		R4
MenuPopup(action)	XtMenuPopup(action)		R4
XtNextEvent()		XtAppNextEvent()		R3
XtPeekEvent()		XtAppPeekEvent()		R3
XtPending()		XtAppPending()			R3
XtSetErrorHandler()	XtAppSetErrorHandler()		R3
XtSetErrorMsgHandler	XtAppSetErrorMsgHandler()	R3
XtSetSelectionTimeout()	XtAppSetSelectionTimeout()	R3
XtSetWarningHandler()	XtAppSetWarningHandler()	R3
XtSetWarningMsgHandler() XtAppSetWarningMsgHandler()	R3
XtWarning()		XtAppWarning()			R3
XtWarningMsg()		XtAppWarningMsg()		R3
20. Where are the resources loaded from?
The resources of a widget are filled in from the following places
(from highest priority to lowest priority):
	1. Args passed at creation time.
	2. Command line arguments.
	3. User's per host defaults file
	4. User's defaults file.
	5. User's per application default file.
	6. System wide per application default file.
Note that 2-6 are read only once on application startup.  The result
of steps 3-6 is a single resource database used for further queries.
The per host defaults file contains customizations for all
applications executing on a specific computer.  This file is either
specified with the XENVIRONMENT environment variable or if that is not
set then the file $HOME/.Xdefaults-<host> is used.
The user defaults file is either obtained from the RESOURCE_MANAGER
property on the root window of the display or if that is not set then
the file $HOME/.Xdefaults is used.  Typically, the program "xrdb" is
used to set the RESOURCE_MANAGER property.  Please note that this
should be kept relatively small as each client that connects to the
display must transfer the property.  A size of around 1-3KByte is
reasonable.  Some toolkits may track changes to the RESOURCE_MANAGER
but most do not.
A user may have many per application default files containing
customizations specific to each application.  The intrinsics are quite
flexible on how this file is found.  Read the next part that describes
the various environment variables and how they effect where this file
is found.
The system wide per application default files are typically found in
/usr/lib/X11/app-defaults.  If such a file is not found then the
fallback resources are used.  The intrinsics are quite flexible on how
this file is found.  Read the next part that describes the various
environment variables and how they effect where this file is found.
[Thanks to Oliver Jones (oj@pictel.com) for the following, 6/92]
You can use several environment variables to control how resources are
loaded for your Xt-based programs -- XFILESEARCHPATH,
XUSERFILESEARCHPATH, and XAPPLRESDIR.  These environment variables
control where Xt looks for application-defaults files as an
application is initializing.  Xt loads at most one app-defaults file
from the path defined in XFILESEARCHPATH and another from the path
defined in XUSERFILESEARCHPATH.
Set XFILESEARCHPATH if software is installed on your system in such a
way that app-defaults files appear in several different directory
hierarchies.  Suppose, for example, that you are running Sun's Open
Windows, and you also have some R4 X applications installed in
/usr/lib/X11/app-defaults. You could set a value like this for
XFILESEARCHPATH, and it would cause Xt to look up app-defaults files
in both /usr/lib/X11 and /usr/openwin/lib (or wherever your
OPENWINHOME is located):
	setenv XFILESEARCHPATH /usr/lib/X11/%T/%N:$OPENWINHOME/lib/%T/%N
The value of this environment variable is a colon-separated list of
pathnames.  The pathnames contain replacement characters as follows
(see XtResolvePathname()):
	%N	The value of the filename parameter, or the
		application's class name.
	%T	The value of the file "type".  In this case, the
		literal string "app-defaults"
	%C	customization resource (R5 only)
	%S	Suffix.  None for app-defaults.
	%L	Language, locale, and codeset (e.g. "ja_JP.EUC")
	%l	Language part of %L  (e.g. "ja")
	%t	The territory part of the display's language string
	%c	The codeset part of the display's language string
Let's take apart the example.  Suppose the application's class name is
"Myterm". Also, suppose Open Windows is installed in /usr/openwin.
(Notice the example omits locale-specific lookup.)
	/usr/lib/X11/%T/%N        means /usr/lib/X11/app-defaults/Myterm
	$OPENWINHOME/lib/%T/%N    means /usr/openwin/lib/app-defaults/Myterm
As the application initializes, Xt tries to open both of the above
app-defaults files, in the order shown.  As soon as it finds one, it
reads it and uses it, and stops looking for others.  The effect of
this path is to search first in /usr/lib/X11, then in /usr/openwin.
Let's consider another example. This time, let's set
XUSERFILESEARCHPATH so it looks for the file Myterm.ad in the current
working directory, then for Myterm in the directory ~/app-defaults.
	setenv XUSERFILESEARCHPATH ./%N.ad:$HOME/app-defaults/%N
The first path in the list expands to ./Myterm.ad.  The second expands
to $HOME/app-defaults/Myterm.  This is a convenient setting for
debugging because it follows the Imake convention of naming the
app-defaults file Myterm.ad in the application's source directory, so
you can run the application from the directory in which you are
working and still have the resources loaded properly.
NOTE: when looking for app-default files with XUSERFILESEARCHPATH,
      for some  bizarre reason, neither the type nor file suffix is
      defined so %T and %S are useless.
With R5, there's another twist.  You may specify a customization
resource value.  For example, you might run the "myterm" application
like this:
	myterm -xrm "*customization: -color"
If one of your pathname specifications had the value
"/usr/lib/X11/app-defaults/%N%C" then the expanded pathname would be
"/usr/lib/X11/app-defaults/Myterm-color" because the %C substitution
character takes on the value of the customization resource.
The default XFILESEARCHPATH, compiled into Xt, is:
		/usr/lib/X11/%L/%T/%N%C:\  (R5)
		/usr/lib/X11/%l/%T/%N%C:\  (R5)
		/usr/lib/X11/%T/%N%C:\     (R5)
		/usr/lib/X11/%L/%T/%N:\
		/usr/lib/X11/%l/%T/%N:\
		/usr/lib/X11/%T/%N
(Note: some sites replace /usr/lib/X11 with a ProjectRoot in this
batch of default settings.)
The default XUSERFILESEARCHPATH, also compiled into Xt, is 
		<root>/%L/%N%C:\  (R5)
		<root>/%l/%N%C:\  (R5)
		<root>/%N%C:\     (R5)
		<root>/%L/%N:\
		<root>/%l/%N:\
		<root>/%N:
<root> is either the value of XAPPLRESDIR or the user's home directory
if XAPPLRESDIR is not set.  If you set XUSERFILESEARCHPATH to some
value other than the default, Xt ignores XAPPLRESDIR altogether.
Notice that the quick and dirty way of making your application find
your app-defaults file in your current working directory is to set
XAPPLRESDIR to ".", a single dot.  In R3, all this machinery worked
differently; for R3 compatibilty, many people set their XAPPLRESDIR
value to "./", a dot followed by a slash.
21. What order are callbacks executed in?
(Courtesy of Donna Converse, converse@expo.lcs.mit.edu; 5/10/92)
The Intrinsics library do not guarantee an order.  This is because
both the widget writer and the application writer have the ability to
modify the entire contents of the callback list.  Neither one
currently knows what the other is doing and so the Intrinsics cannot
guarantee the order of execution.
The application programmer cannot rely on the widget writer; the
widget writer is not required to document when the widget will add and
remove callbacks from the list or what effect this will have;
therefore the functionality contained in a callback should be
independent of the functionality contained in other callbacks on the
list.
Even though the Xt standard in the definition of XtAddCallback
says:
 	"callback_name: Specifies the callback list to which the
 	procedure is to be appended."
you may not infer from the word "appended" that the callback routines
are called in the same order as they have been added to the callback
list.
22. How do I know if a widget is visible?
(Courtesy of Donna Converse, converse@expo.lcs.mit.edu; 5/14/92)
> I am building a widget needs to know if it is visible. I set the visible
> interest field in Core and if my window is completely obscured, the Core
> visible flag goes FALSE. However, if my window is iconified, the flag
> stays set to TRUE.
Right, everything is implemented correctly.  This demonstrates a "deficiency"
in the X protocol, and the Core widget is reflecting the capabilities of the
protocol.  (The "deficiency" is that the information is available in one way,
in this case an inconvenient way.)  The Xt specification is accurate, in
the second and third paragraphs of section 7.10.2, so read this section
carefully.  The visible field will not change in response to iconification.
A VisibilityNotify event will not be received when the window goes from
viewable to unviewable, that is, when the widget or an ancestor is unmapped;
that is, when iconification occurs.  This is the protocol deficiency.
Visibility state and viewable state have specific meanings in the X protocol;
see the glossary in your Xlib and X protocol reference manual.
> Is this a problem with "mwm" or is there something
> else which needs to be done?
You'll see this with any window manager, with no window manager.
> If the problem is "mwm", what is the fastest
> way to determine if a window is iconified? 
As an application writer, keep track with a global Boolean in an action
routine with translations for MapNotify and UnmapNotify on the Shell widget
which contains your custom widget.  As the custom widget writer, see the
map_state field returned by a call to XGetWindowAttributes.  These are
suggestions.
23. How do I reparent a widget in Xt, i.e. XtReparentWidget()?
You can't.
24. Why use XtMalloc, XtFree, etc?
Unfortunately, most code that calls malloc(), realloc() or calloc()
tends to ignore the possibility of returning NULL.  At best it is
handled something like:
	ptr = (type *) malloc (sizeof (type))
	if (!ptr)
		perror ("malloc in xyzzy()");
		exit (1)
To handle this common case the Intrinsics define the functions
XtMalloc(), XtCalloc(), XtNew(), XtNewString() and XtRealloc() which
all use the standard C language functions malloc(), calloc() and
realloc() but execute XtErrorMsg() if a NULL value is returned.  Xt
error handlers are not supposed to return so this effectively exits.
In addition, if XtRealloc() is called with a NULL pointer, it uses
XtMalloc() to get the initial space.  This allows code like:
	if (!ptr)
		ptr = (type *) malloc (sizeof (type));
	else
		ptr = (type *) realloc (ptr, sizeof (type) * (count + 1));
	++count;
to be written as:
	ptr = XtRealloc (ptr, sizeof (ptr) * ++count);
Also, XtFree() accepts a NULL pointer as an argument.  Generally, I've
found the Xt functions conveniant to use.  However, anytime I'm
allocating anything potentially large I use the standard functions so
I can fully recover from not enough memory errors.
XtNew() and XtNewString() are conveniant macros for allocating a
structure or copying a string:
	  struct abc *xyzzy;
	  char	     *ptr;
	  char	     *str = "abcdef";
	  xyzzy = XtNew (struct abc);	/* takes care of type casting */
	  ptr = XtNewString (str);
A strict interpretation of the Intrinsics reference manual allow an
implementation to provide functions that are not exchangable with
malloc() and free().  I.e. code such as:
	 char	      *ptr;
	 ptr = XtMalloc (100);
	 free (ptr);
may not work.  Personally, I'd call any implementation that did this
broken and complain to the vendor.
A common error for Motif programmers is to use XtFree() on a string
when they should really be using XmStringFree().
25. How to debug an Xt application?
First, I'd recomend getting "purify" from Pure Software.  This is a
great package for tracing memory problems on Sun's.  It's a bit pricey
at $2750 but I'd still recomend it.  Excuse the marketing blurb
(contact support@pure.com for more info).
	Purify inserts additional checking instructions directly into
	the object code produced by existing compilers.  These
	instructions check every memory read and write performed by
	the program under test and detect several types of access
	errors, such as reading unitialized memory, writing past
	malloc'd bounds, or writing to freed memory.  Purify inserts
	checking logic into all of the code in a program, including
	third party and vendor object-code libraries, and verifies
	system call interfaces.  In addition, Purify tracks memory
	usage and identifies individual memory leaks using a novel
	adaption of garbage collection techniques.  Purify's nearly
	comprehensive memory access checking slows the target program
	down typically by a factor of two to five.
An alternative package that isn't as pricey ($395 for a Sun), runs on
many Unix's and has pretty similar features is "The SENTINEL Debugging
Environment".  This replaces malloc() and several other C library
functions to add additional checks.  (contact cpcahil@virtech.vti.com
for more info)
Next, if you are getting any sort of Xlib error, you'll need to run in
synchronous mode, easily accomplished with the "-sync" command line
argument or by setting the variable Xdebug to 1 with your debugger.  Then
set a break point in exit().  This will let you trace back to the
original Xlib function being called.  If you don't run in synchronous
mode, then the actual error may have occured any number of calls to
Xlib previously since the Xlib calls are buffered and replies from the
server are asynchronous.
Next, if you are having trouble with window layout, you can use the
undocumented resource "xtIdentifyWindows" or the class resource
"XtDebug" to cause the widget name to be identified with each window.
For example:
    example% xload -xrm '*XtDebug:true' &
    example% xwininfo -tree
	     <click in new xload window>
will give the normal information but the widget name and class of each
window is included.  This can help for checking the location and size
of errant widgets.
Next, if you are having trouble with geometry managers or you want to
test the way a widget manages it's children, you can try
export.lcs.mit.edu:contrib/libXtGeo.tar.Z.  This acts as a filter
between any children and a geometry manager and checks the behaviour
of both.  It's a very clever idea.
The most unfortunate problem is debugging a callback while the
application is executing a grab of the keyboard or mouse (such as from
a pulldown menu).  The server effectively locks up and you'll need to
go to another machine and kill the debugger manually.  The server
locks up because the application being debugged has said no one else
can have access to the keyboard but the application is not stopped
waiting because the debugger is waiting for your commands.
Unfortunately you can't give them because all the input is going to
your application which is stopped.
The best way to debug this kind of problem is with two machines on
your desk, running the program under a debugger (or other environment)
on one machine, and running the application on the other, possibly
using a command sequence like this:
	othermachine% xhost +thismachine
	thismachine% setenv DISPLAY othermachine:0;
	thismachine% gdb application	# Your favorite debugger.
	or this:
	othermachine% xhost +thismachine
	thismachine% gdb application
	(gdb) set environment DISPLAY othermachine:0
	(gdb) run ...
I believe CodeCenter, a C interpreter/graphical debugger has a method
of dealing with this by explicitely calling the Xlib functions to
release any grabs during breakpoints.
Debugging widget problems requires pretty good debugging skills and
knowledge of how widgets work.  You can go a long way without knowing
the internals of a particular widget but not very far without
understanding how a widget works.  Judicious use of conditional
breakpoints and adding print statements with the debugger help a great
deal.
26. Why don't XtAddInput(), XtAddTimeout() and XtAddWorkProc() work?
   I have got a delicate problem with the three routines XtAddInput,
   XtAddTimeOut and XtAddWorkProc. The problem I have is that when
   I use them in my application they seem not to be registred properly.
   I have made a handy little testprogram where everything works
   perfect, but in my "real" application nothing happens. 
The introduction in R3 of the XtApp*() functions obsoleted those
routines (see Q19 for other changes in R3, R4, and R5).  What happens is
they use a default application context different then the one you may
have created.  Since events and timeouts are distributed on a per
application context basis and you are using two application contexts,
you won't get those events.
For example:
	toplevel = XtAppInitialize(&app, class,
				   Desc, XtNumber (Desc),
				   &argc, argv,
				   Fallback, args, cnt);
	XtAddTimeOut (...)
	XtAddWorkProc (...)
	XtAppMainLoop (app)
would never invoke the timeout.
27. What is and how can I implement drag and drop?
(Courtesy of Roger Reynolds, rogerr@netcom.com; 19 Feb 93)
Drag-n-drop is a buzzword for moving data between clients, in an
``intuitive'' fashion.
Motif Version 1.2 supports drag-n-drop capabilities, OpenLook has
supported d-n-d all along.  The two protocols are not compatable with
each other, and so far as I know, they are not published.
I wrote a package called RDD which is designed to be a flexible public
protocol for doing drag 'n drop operations between clients.  My
intention was to provide a tool which would make it easy for people to
support a "standard" drag-n-drop protocol in the programs they develop
and contribute or sell, regardless of what widget set is used (as long
as it is based on Xt).
The implementation is based upon my understanding of the ICCCM
conventions, for more details read the code.
I have heard from dozens of people using RDD who like it and feel that
it works a whole lot better than Motif 1.2 stuff.  Also, there seem to
be many who think that it is neat but are constrained to use Motif
anyway.
The latest RDD (and some other stuff) is available for ftp from
netcom.com, in /pub/rogerr.  A (possibly older) version is also
available on export.lcs.mit.edu in /contrib.
Pete Ware					ware@cis.ohio-state.edu
CIS Dept, Ohio State University			w/ (614) 292-7318
228 Bolz Hall, 2036 Neil Ave.			h/ (614) 538-0965
Columbus, OH 43210
