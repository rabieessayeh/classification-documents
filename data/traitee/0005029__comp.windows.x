Archive-name: x-faq/part5
Last-modified: 1993/04/04
Subject: 119)  I'm writing a widget and can't use a float as a resource value.
Float resources are not portable; the size of the value may be larger than
the size of an XtPointer. Try using a pointer to a float instead; the Xaw
Scrollbar float resources are handled in this way. 
Subject: 120)  Is this a memory leak in the X11R4 XtDestroyWidget()?!
Yes. This is the "unofficial" fix-19 for the X11R4 Destroy.c:
*** Destroy.c.1.37	Thu Jul 11 15:41:25 1991
--- lib/Xt/Destroy.c	Thu Jul 11 15:42:23 1991
  /* $XConsortium: Destroy.c,v 1.37 90/09/28 10:21:32 swick Exp $ */
+ /* Plus unofficial patches in revisions 1.40 and 1.41 */
  Copyright 1987, 1988 by Digital Equipment Corporation, Maynard, Massachusetts,
      int i = 0;
!     DestroyRec* dr = app->destroy_list;
      while (i < app->destroy_count) {
  	if (dr->dispatch_level >= dispatch_level)  {
  	    Widget w = dr->widget;
  	    if (--app->destroy_count)
  		bcopy( (char*)(dr+1), (char*)dr,
! 		       app->destroy_count*sizeof(DestroyRec)
  	    XtPhase2Destroy(w);
  	else {
  	    i++;
      int i = 0;
!     DestroyRec* dr;
      while (i < app->destroy_count) {
+ 	/* XtPhase2Destroy can result in calls to XtDestroyWidget,
+ 	 * and these could cause app->destroy_list to be reallocated.
+ 	dr = app->destroy_list + i;
  	if (dr->dispatch_level >= dispatch_level)  {
  	    Widget w = dr->widget;
  	    if (--app->destroy_count)
  		bcopy( (char*)(dr+1), (char*)dr,
! 		       (app->destroy_count - i) * sizeof(DestroyRec)
  	    XtPhase2Destroy(w);
  	else {
  	    i++;
[from Donna Converse, converse@expo.lcs.mit.EDU]
Subject: 121)  Are callbacks guaranteed to be called in the order registered?
	Although some books demonstrate that the current implementation of Xt
happens to call callback procedures in the order in which they are registered, 
the specification does not guarantee such a sequence, and supplemental 
authoritative documents (i.e. the Asente/Swick volume) do say that the order is
undefined.  Because the callback list can be manipulated by both the widget and
the application, Xt cannot guarantee the order of execution.
	In general, the callback procedures should be thought of as operating 
independently of one another and should not depend on side-effects of other
callbacks operating; if a seqence is needed, then the single callback to be 
registered can explicitly call other functions necessary.
[4/92; thanks to converse@expo.lcs.mit.edu]
Subject: 122)  Why doesn't XtDestroyWidget() actually destroy the widget?
	XtDestroyWidget() operates in two passes, in order to avoid leaving
dangling data structures; the function-call marks the widget, which is not 
actually destroyed until your program returns to its event-loop. 
Subject: 123)  How do I query the user synchronously using Xt?
	It is possible to have code which looks like this trivial callback,
which has a clear flow of control. The calls to AskUser() block until answer
is set to one of the valid values. If it is not a "yes" answer, the code drops
out of the callback and back to an event-processing loop: 
	void quit(Widget w, XtPointer client, XtPointer call)
		int             answer;
		answer = AskUser(w, "Really Quit?");
		if (RET_YES == answer)
			answer = AskUser(w, "Are You Really Positive?");
			if (RET_YES == answer)
				exit(0);
	A more realistic example might ask whether to create a file or whether 
to overwrite it.
	This is accomplished by entering a second event-processing loop and
waiting until the user answers the question; the answer is returned to the
calling function. That function AskUser() looks something like this, where the 
Motif can be replaced with widget-set-specific code to create some sort of 
dialog-box displaying the question string and buttons for "OK", "Cancel" and 
"Help" or equivalents:
  int AskUser(w, string)
        Widget          w;
        char           *string;
        int             answer=RET_NONE;	/* some not-used marker */
        Widget          dialog;			/* could cache&carry, but ...*/
        Arg             args[3];
        int             n = 0;
        XtAppContext    context;
        XtSetArg(args[n], XmNmessageString, XmStringCreateLtoR(string,
        XtSetArg(args[n], XmNdialogStyle, XmDIALOG_APPLICATION_MODAL); n++;
        dialog = XmCreateQuestionDialog(XtParent(w), string, args, n);
        XtAddCallback(dialog, XmNokCallback, response, &answer);
        XtAddCallback(dialog, XmNcancelCallback, response, &answer);
        XtAddCallback(dialog, XmNhelpCallback, response, &answer);
        XtManageChild(dialog);
        context = XtWidgetToApplicationContext (w);
        while (answer == RET_NONE || XtAppPending(context)) {
                XtAppProcessEvent (context, XtIMAll);
        XtDestroyWidget(dialog);  /* blow away the dialog box and shell */
        return answer;
	The dialog supports three buttons, which are set to call the same 
function when tickled by the user.  The variable answer is set when the user 
finally selects one of those choices:
  void response(w, client, call)
        Widget          w;
        XtPointer client;
        XtPointer call;
  int *answer = (int *) client;
  XmAnyCallbackStruct *reason = (XmAnyCallbackStruct *) call;
        switch (reason->reason) {
        case XmCR_OK:
                *answer = RET_YES;	/* some #define value */
                break;
        case XmCR_CANCEL:
                *answer = RET_NO; 
		break;
        case XmCR_HELP:
                *answer = RET_HELP;
                break;
        default:
                return;
and the code unwraps back to the point at which an answer was needed and
continues from there.
[Thanks to Dan Heller (argv@sun.com); further code is in Dan's R3/contrib
WidgetWrap library. 2/91]
Subject: 124)  How do I determine the name of an existing widget?
I have a widget ID and need to know what the name of that widget is.
	Users of R4 and later are best off using the XtName() function, which 
will work on both widgets and non-widget objects.
	If you are still using R3, you can use this simple bit of code to do 
what you want. Note that it depends on the widget's internal data structures 
and is not necessarily portable to future versions of Xt, including R4.
	#include <X11/CoreP.h>
	#include <X11/Xresource.h>
	String XtName (widget)
	Widget widget;	/* WILL work with non-widget objects */
	return XrmNameToString(widget->core.xrm_name);
[7/90; modified with suggestion by Larry Rogers (larry@boris.webo.dg.com) 9/91]
Subject: 125)  Why do I get a BadDrawable error drawing to XtWindow(widget)?
I'm doing this in order to get a window into which I can do Xlib graphics
within my Xt-based program:
> canvas = XtCreateManagedWidget ( ...,widgetClass,...) /* drawing area */
> window = XtWindow(canvas);	/* get the window associated with the widget */
> XDrawLine (...,window,...);	/* produces error */
	The window associated with the widget is created as a part of the 
realization of the widget.  Using a window id of NULL ("no window") could 
create the error that you describe.  It is necessary to call XtRealizeWidget() 
before attempting to use the window associated with a widget. 
	Note that the window will be created after the XtRealizeWidget() call, 
but that the server may not have actually mapped it yet, so you should also 
wait for an Expose event on the window before drawing into it.
Subject: 126)  Why do I get a BadMatch error when calling XGetImage?
The BadMatch error can occur if the specified rectangle goes off the edge of 
the screen. If you don't want to catch the error and deal with it, you can take
the following steps to avoid the error:
1) Make a pixmap the same size as the rectangle you want to capture.
2) Clear the pixmap to background using XFillRectangle.
3) Use XCopyArea to copy the window to the pixmap.
4) If you get a NoExpose event, the copy was clean. Use XGetImage to grab the
image from the pixmap.
5) If you get one or more GraphicsExpose events, the copy wasn't clean, and 
the x/y/width/height members of the GraphicsExpose event structures tell you 
the parts of the pixmap which aren't good.
6) Get rid of the pixmap; it probably takes a lot of memory.
[10/92; thanks to Oliver Jones (oj@pictel.com)]
Subject: 127)  How can my application tell if it is being run under X?
	A number of programs offer X modes but otherwise run in a straight
character-only mode. The easiest way for an application to determine that it is
running on an X display is to attempt to open a connection to the X server:
	display = XOpenDisplay(display_name);
	if (display)
		{ do X stuff }
	else
		{ do curses or something else }
where display_name is either the string specified on the command-line following
-display, by convention, or otherwise is (char*)NULL [in which case 
XOpenDisplay uses the value of $DISPLAY, if set].
This is superior to simply checking for the existence a -display command-line 
argument or checking for $DISPLAY set in the environment, neither of which is 
adequate. [5/91]
Subject: 128)  How do I make a "busy cursor" while my application is computing?
Is it necessary to call XDefineCursor() for every window in my application?
	The easiest thing to do is to create a single InputOnly window that is 
as large as the largest possible screen; make it a child of your toplevel 
window and it will be clipped to that window, so it won't affect any other 
application. (It needs to be as big as the largest possible screen in case the 
user enlarges the window while it is busy or moves elsewhere within a virtual 
desktop.) Substitute "toplevel" with your top-most widget here (similar code 
should work for Xlib-only applications; just use your top Window):
     unsigned long valuemask;
     XSetWindowAttributes attributes;
     /* Ignore device events while the busy cursor is displayed. */
     valuemask = CWDontPropagate | CWCursor;
     attributes.do_not_propagate_mask =  (KeyPressMask | KeyReleaseMask |
         ButtonPressMask | ButtonReleaseMask | PointerMotionMask);
     attributes.cursor = XCreateFontCursor(XtDisplay(toplevel), XC_watch);
     /* The window will be as big as the display screen, and clipped by
        its own parent window, so we never have to worry about resizing */
     XCreateWindow(XtDisplay(toplevel), XtWindow(toplevel), 0, 0,
         65535, 65535, (unsigned int) 0, 0, InputOnly,
         CopyFromParent, valuemask, &attributes);
where the maximum size above could be replaced by the real size of the screen,
particularly to avoid servers which have problems with windows larger than
When you want to use this busy cursor, map and raise this window; to go back to
normal, unmap it. This will automatically keep you from getting extra mouse
events; depending on precisely how the window manager works, it may or may not
have a similar effect on keystrokes as well.
In addition, note also that most of the Xaw widgets support an XtNcursor 
resource which can be temporarily reset, should you merely wish to change the
cursor without blocking pointer events.
[thanks to Andrew Wason (aw@cellar.bae.bellcore.com), Dan Heller 
(argv@sun.com), and mouse@larry.mcrcim.mcgill.edu; 11/90,5/91]
Subject: 129)  How do I fork without hanging my parent X program?
	An X-based application which spawns off other Unix processes which 
continue to run after it is closed typically does not vanish until all of its 
children are terminated; the children inherit from the parent the open X 
connection to the display. 
	What you need to do is fork; then, immediately, in the child process, 
		close (ConnectionNumber(XtDisplay(widget)));
to close the file-descriptor in the display information. After this do your 
exec. You will then be able to exit the parent.
	Alternatively, before exec'ing make this call, which causes the file 
descriptor to be closed on exec.
		(void) fcntl(ConnectionNumber(XDisplay), F_SETFD, 1);
[Thanks to Janet Anstett (anstettj@tramp.Colorado.EDU), Gordon Freedman 
(gjf00@duts.ccc.amdahl.com); 2/91. Greg Holmberg (holmberg@frame.com), 3/93.]
Subject: 130)  Can I make Xt or Xlib calls from a signal handler?
	No. Xlib and Xt have no mutual exclusion for protecting critical 
sections. If your signal handler makes such a call at the wrong time (which 
might be while the function you are calling is already executing), it can leave
the library in an inconsistent state. Note that the ANSI C standard points
out that behavior of a signal handler is undefined if the signal handler calls
any function other than signal() itself, so this is not a problem specific to
Xlib and Xt; the POSIX specification mentions other functions which may be
called safely but it may not be assumed that these functions are called by 
Xlib or Xt functions.
	You can work around the problem by setting a flag in the interrupt
handler and later checking it with a work procedure or a timer event which
has previously been added.
	Note: the article in The X Journal 1:4 and the example in O'Reilly 
Volume 6 are in error.
[Thanks to Pete Ware (ware@cis.ohio-state.edu) and Donna Converse 
(converse@expo.lcs.mit.EDU), 5/92]
Subject: 131)  What are these "Xlib sequence lost" errors?
	You may see these errors if you issue Xlib requests from an Xlib error 
handler, or, more likely, if you make calls which generate X requests to Xt or 
Xlib from a signal handler, which you shouldn't be doing in any case. 
Subject: 132)  How can my Xt program handle socket, pipe, or file input?
	It's very common to need to write an Xt program that can accept input 
both from a user via the X connection and from some other file descriptor, but 
which operates efficiently and without blocking on either the X connection or 
the other file descriptor.
	A solution is use XtAppAddInput(). After you open your file descriptor,
use XtAppAddInput() to register an input handler. The input handler will be 
called every time there is something on the file descriptor requiring your 
program's attention. Write the input handler like you would any other Xt 
callback, so it does its work quickly and returns.  It is important to use only
non-blocking I/O system calls in your input handlers.
	Most input handlers read the file descriptor, although you can have an 
input handler write or handle exception conditions if you wish.
	Be careful when you register an input handler to read from a disk file.
You will find that the function is called even when there isn't input pending.
XtAppAddInput() is actually working as it is supposed to. The input handler is 
called whenever the file descriptor is READY to be read, not only when there is
new data to be read. A disk file (unlike a pipe or socket) is almost always 
ready to be read, however, if only because you can spin back to the beginning
and read data you've read before.  The result is that your function will almost
always be called every time around XtAppMainLoop(). There is a way to get the 
type of interaction you are expecting; add this line to the beginning of your 
function to test whether there is new data:
	     if (ioctl(fd, FIONREAD, &n) == -1 || n == 0) return;
But, because this is called frequently, your application is effectively in a 
busy-wait; you may be better off not using XtAppAddInput() and instead setting 
a timer and in the timer procedure checking the file for input.
[courtesy Dan Heller (argv@ora.com), 8/90; mouse@larry.mcrcim.mcgill.edu 5/91;
Ollie Jones (oj@pictel.com) 6/92]
Subject: 133)  How do I simulate a button press/release event for a widget?
	You can do this using XSendEvent(); it's likely that you're not setting
the window field in the event, which Xt needs in order to match to the widget
which should receive the event.
	 If you're sending events to your own application, then you can use 
XtDispatchEvent() instead. This is more efficient than XSendEvent() in that you
avoid a round-trip to the server.
	Depending on how well the widget was written, you may be able to call
its action procedures in order to get the effects you want.
[courtesy Mark A. Horstman (mh2620@sarek.sbc.com), 11/90]
Subject: 134)  Why doesn't anything appear when I run this simple program?
> the_window = XCreateSimpleWindow(the_display,
>      root_window,size_hints.x,size_hints.y,
>      size_hints.width,size_hints.height,BORDER_WIDTH,
>      BlackPixel(the_display,the_screen),
>      WhitePixel(the_display,the_screen));
> XSelectInput(the_display,the_window,ExposureMask|ButtonPressMask|
> 	ButtonReleaseMask);
> XMapWindow(the_display,the_window);
> XDrawLine(the_display,the_window,the_GC,5,5,100,100);
	You are right to map the window before drawing into it. However, the 
window is not ready to be drawn into until it actually appears on the screen --
until your application receives an Expose event. Drawing done before that will 
generally not appear. You'll see code like this in many programs; this code 
would appear after window was created and mapped:
  while (!done)
      XNextEvent(the_display,&the_event);
      switch (the_event.type) {
	case Expose:	 /* On expose events, redraw */
		XDrawLine(the_display,the_window,the_GC,5,5,100,100);
		break;
	Note that there is a second problem: some Xlib implementations don't 
set up the default graphics context to have correct foreground/background 
colors, so this program could previously include this code:
  the_GC_values.foreground=BlackPixel(the_display,the_screen);	/* e.g. */
  the_GC_values.background=WhitePixel(the_display,the_screen);	/* e.g. */
  the_GC = XCreateGC(the_display,the_window,
                GCForeground|GCBackground,&the_GC_values);
Note: the code uses BlackPixel and WhitePixel to avoid assuming that 1 is 
black and 0 is white or vice-versa.  The relationship between pixels 0 and 1 
and the colors black and white is implementation-dependent.  They may be 
reversed, or they may not even correspond to black and white at all.
Also note that actually using BlackPixel and WhitePixel is usually the wrong 
thing to do in a finished program, as it ignores the user's preference for 
foreground and background.
And also note that you can run into the same situation in an Xt-based program
if you draw into the XtWindow(w) right after it has been realized; it may
not yet have appeared.
Subject: 135)  What is the difference between a Screen and a screen?
	The 'Screen' is an Xlib structure which includes the information about
one of the monitors or virtual monitors which a single X display supports. A 
server can support several independent screens. They are numbered unix:0.0,
unix:0.1, unix:0.2, etc; the 'screen' or 'screen_number' is the second digit --
the 0, 1, 2 which can be thought of as an index into the array of available 
Screens on this particular Display connection.
	The macros which you can use to obtain information about the particular
Screen on which your application is running typically have two forms -- one
which takes a Screen and one with takes both the Display and the screen_number.
	In Xt-based programs, you typically use XtScreen(widget) to determine 
the Screen on which your application is running, if it uses a single screen.
	(Part of the confusion may arise from the fact that some of the macros
which return characteristics of the Screen have "Display" in the names -- 
XDisplayWidth, XDisplayHeight, etc.)
Subject: 136)  Can I use C++ with X11? Motif? XView?
	The X11R4/5 header files are compatible with C++. The Motif 1.1 header 
files are usable as is inside extern "C" {...}. However, the definition of
String in Intrinsic.h can conflict with the libg++ or other String class and
needs to be worked around.
	Some other projects which can help:
	WWL, a set of C++ classes by Jean-Daniel Fekete to wrap X Toolkit 
widgets, available via anonymous FTP from export.lcs.mit.edu as 
contrib/WWL-1.2.tar.Z [7/92] or lri.lri.fr (129.175.15.1) as pub/WWL-1.2.tar.Z.
It works by building a set of C++ classes in parallel to the class tree of the 
widgets.
	The C++ InterViews toolkit is obtainable via anonymous FTP from 
interviews.stanford.edu. InterViews uses a box/glue model similar to that of 
TeX for constructing user interfaces and supports multiple looks on the user 
interfaces. Some of its sample applications include a WYSIWIG document editor 
(doc), a MacDraw-like drawing program (idraw) and an interface builder 
(ibuild).
	THINGS,  a class library written at the Rome Air Force Base by the 
Strategic Air Command, available as freeware on archive sites.
	Motif++ is a public-domain library that defines C++ class wrappers for
Motif 1.1; it adds an "application" class for, e.g., initializing X, and also
integrates WCL and the Xbae widget set. This work was developed by Ronald van 
Loon <rvloon@cv.ruu.nl> based on X++, a set of bindings done by the University 
of Lowell Graphics Research Laboratory. The current sources are available from 
decuac.dec.com (192.5.214.1) as /pub/X11/motif++.21.jul.92.tar.Z.
	The source code examples for Doug Young's "Object-Oriented Programming 
with C++ and OSF/Motif" [ISBN 0-13-630252-1] do not include "widget wrappers" 
but do include a set of classes that encapsulates higher-level facilities 
commonly needed by Motif- or other Xt-based applications; check export in
~ftp/contrib/young.c++.tar.Z.
	Rogue Wave offers "View.h++" for C++ programmers using Motif; info:
1-800-487-3217 or +1 503 754 2311.
	A product called "Commonview" by Glockenspiel Ltd, Ireland (??) 
apparently is a C++-based toolkit for multiple window systems, including PM,
Windows, and X/Motif.
	Xv++ is sold by Qualix (415-572-0200; fax -1300); it implements an 
interface from the GIL files that Sun's OpenWindows Developers Guide 3.0 
produces to Xview wrapper classes in C++.
	UIT is a set of C++ classes embedding the XView toolkit; it is intended
for use with Sun's OpenWindows Developers Guide 3.0 builder tool. Sources are 
on export.mit.edu.au as UIT.tar.Z. Version 2 was released 5/28/92.
	Also of likely use is ObjectCenter (Saber-C++). And a reasonable
alternative to all of the above is ParcPlace's (formerly Solbourne's) Object 
Interface.
[Thanks to Douglas S. Rand (dsrand@mitre.org) and George Wu (gwu@tcs.com);2/91]
Subject: 137)  Where can I obtain alternate language bindings to X?
	Versions of the CLX Lisp bindings are part of the X11 core source 
distributions. A version of CLX is on the R5 tape [10/91]; version 5.0.2 [9/92]
is on export.lcs.mit.edu in /contrib/CLX.R5.02.tar.Z.
	The SAIC Ada-X11 bindings are through anonymous ftp in /pub from
stars.rosslyn.unisys.com (128.126.164.2). 
	There is an X/Ada study team sponsored by NASA JSC, which apparently is
working out bindings. Information: xada@ghg.hou.tx.us.
	GNU SmallTalk has a beta native SmallTalk binding to X called STIX (by
Steven.Byrne@Eng.Sun.COM). It is still in its beginning stages, and 
documentation is sparse outside the SmallTalk code itself. The sources are 
available as /pub/gnu/smalltalk-1.1.1.tar.Z on prep.ai.mit.edu (18.71.0.38) or 
ugle.unit.no (129.241.1.97).
	Prolog bindings (called "XWIP") written by Ted Kim at UCLA while
supported in part by DARPA are available by anonymous FTP from
export.lcs.mit.edu:contrib/xwip.tar.Z or ftp.cs.ucla.edu:pub/xwip.tar.Z.
These prolog language bindings depend on having a Quintus-type foreign function
interface in your prolog. The developer has gotten it to work with Quintus and 
SICStus prolog. Inquiries should go to xwip@cs.ucla.edu. [3/90]
	Scheme bindings to Xlib, OSF/Motif, and Xaw are part of the Elk
distribution; version 1.5a on export obsoletes the version on the R5 contrib
tape. 
	x-scm, a bolt-on accessory for Aubrey Jaffer's "scm" Scheme interpreter
that provides an interface to Xlib, Motif, and OpenLook, is now available via 
FTP from altdorf.ai.mit.edu:archive/scm/xscm1.05.tar.Z and 
nexus.yorku.ca:pub/scheme/new/xscm1.05.tar.Z.
	Ada bindings to Motif, explicitly, will eventually be made available by
the Jet Propulsion Laboratories, probably through the normal electronic
means.  Advance information can be obtained from dsouleles@dsfvax.jpl.nasa.gov,
who may respond as time permits.
	AdaMotif is a complete binding to X and Motif for the Ada language, for
many common systems; it is based in part upon the SAIC/Unisys bindings and also
includes a UIL to Ada translator. Info: Systems Engineering Research 
Corporation, 1-800-Ada-SERC (well!serc@apple.com).
	Also: the MIT Consortium, although not involved in producing Ada
bindings for X, maintains a partial listing of people involved in X and Ada;
information is available from Donna Converse, converse@expo.lcs.mit.edu.
Subject: 138)  Can XGetWindowAttributes get a window's background pixel/pixmap?
	No.  Once set, the background pixel or pixmap of a window cannot be 
re-read by clients.  The reason for this is that a client can create a pixmap,
set it to be the background pixmap of a window, and then free the pixmap. The 
window keeps this background, but the pixmap itself is destroyed.  If you're 
sure a window has a background pixel (not a pixmap), you can use XClearArea() 
to clear a region to the background color and then use XGetImage() to read 
back that pixel.  However, this action alters the contents of the window, and 
it suffers from race conditions with exposures. [courtesy Dave Lemke of NCD 
and Stuart Marks of Sun]
	Note that the same applies to the border pixel/pixmap. This is a 
(mis)feature of the protocol which allows the server is free to manipulate the
pixel/pixmap however it wants.  By not requiring the server to keep the 
original pixel or pixmap, some (potentially a lot of) space can be saved. 
[courtesy Jim Fulton, MIT X Consortium]
Subject: 139)  How do I create a transparent window?
	A completely transparent window is easy to get -- use an InputOnly
window. In order to create a window which is *mostly* transparent, you have
several choices:
	- the SHAPE extension first released with X11R4 offers an easy way to
make non-rectangular windows, so you can set the shape of the window to fit the
areas where the window should be nontransparent; however, not all servers 
support the extension.
	- a machine-specific method of implementing transparent windows for
particular servers is to use an overlay plane supported by the hardware.  Note 
that there is no X notion of a "transparent color index".
	- a generally portable solution is to use a large number of tiny 
windows, but this makes operating on the application as a unit difficult.
	- a final answer is to consider whether you really need a transparent
window or if you would be satisfied with being able to overlay your application
window with information; if so, you can draw into separate bitplanes in colors
that will appear properly.
[thanks to der Mouse, mouse@lightning.McRCIM.McGill.EDU, 3/92; see also
The X Journal 1:4 for a more complete answer, including code samples for this
last option]
Subject: 140)  Why doesn't GXxor produce mathematically-correct color values?
	When using GXxor you may expect that drawing with a value of black on a
background of black, for example, should produce white. However, the drawing
operation does not work on RGB values but on colormap indices. The color that
the resulting colormap index actually points to is undefined and visually
random unless you have actually filled it in yourself. [On many X servers Black
and White often 0/1 or 1/0; programs taking advantage of this mathematical
coincidence will break.]
	If you want to be combining colors with GXxor, then you should be 
allocating a number of your own color cells and filling them with your chosen
pre-computed values.
	If you want to use GXxor simply to switch between two colors, then you 
can take the shortcut of setting the background color in the GC (graphics 
context) to 0 and the foreground color to a value such that when it draws over 
red, say, the result is blue, and when it draws over blue the result is red. 
This foreground value is itself the XOR of the colormap indices of red and 
blue.
[Thanks to Chris Flatters (cflatter@zia.aoc.nrao.EDU) and Ken Whaley 
(whaley@spectre.pa.dec.com), 2/91]
Subject: 141)  Why does every color I allocate show up as black?
	Make sure you're using 16 bits and not 8.  The red, green, and blue 
fields of an XColor structure are scaled so that 0 is nothing and 65535 is 
full-blast. If you forget to scale (using, for example, 0-255 for each color) 
the XAllocColor function will perform correctly but the resulting color is 
usually black. 
[Thanks to Paul Asente, asente@adobe.com, 7/91]
Subject: 142)  Why can't my program get a standard colormap?
I have an image-processing program which uses XGetRGBColormap() to get the 
standard colormap, but it doesn't work. 
	XGetRGBColormap() when used with the property XA_RGB_DEFAULT_MAP does 
not create a standard colormap -- it just returns one if one already exists.
Use xstdcmap or do what it does in order to create the standard colormap first.
[1/91; from der Mouse (mouse@larry.mcrcim.mcgill.edu)]
Subject: 143)  Why does the pixmap I copy to the screen show up as garbage? 
	The initial contents of pixmaps are undefined.  This means that most
servers will allocate the memory and leave around whatever happens to be there 
-- which is usually garbage.  You probably want to clear the pixmap first using
XFillRectangle() with a function of GXcopy and a foreground pixel of whatever 
color you want as your background (or 0L if you are using the pixmap as a 
mask). [courtesy Dave Lemke of NCD and Stuart Marks of Sun]
Subject: 144)  How do I check whether a window ID is valid?
My program has the ID of a window on a remote display. I want to check whether
the window exists before doing anything with it.
	Because X is asynchronous, there isn't a guarantee that the window 
would still exist between the time that you got the ID and the time you sent an
event to the window or otherwise manipulated it. What you should do is send the
event without checking, but install an error handler to catch any BadWindow 
errors, which would indicate that the window no longer exists. This scheme will
work except on the [rare] occasion that the original window has been destroyed 
and its ID reallocated to another window.
[courtesy Ken Lee (klee@synoptics.com), 4/90]
Subject: 145)  Can I have two applications draw to the same window?
	Yes. The X server assigns IDs to windows and other resources (actually,
the server assigns some bits, the client others), and any application that 
knows the ID can manipulate the resource [almost any X server resource, except
for GCs and private color cells, can be shared].
	The problem you face is how to disseminate the window ID to multiple 
applications. A simple way to handle this (and which solves the problem of the
applications' running on different machines) is in the first application to 
create a specially-named property on the root-window and put the window ID into
it. The second application then retrieves the property, whose name it also
knows, and then can draw whatever it wants into the window.
	[Note: this scheme works iff there is only one instance of the first
application running, and the scheme is subject to the limitations mentioned
in the Question about using window IDs on remote displays.]
	Note also that you will still need to coordinate any higher-level 
cooperation among your applications. 
	Note also that two processes can share a window but should not try to 
use the same server connection. If one process is a child of the other, it 
should close down the connection to the server and open its own connection.
[mostly courtesy Phil Karlton (karlton@wpd.sgi.com) 6/90]
Subject: 146)  Why can't my program work with tvtwm or swm?
	A number of applications, including xwd, xwininfo, and xsetroot, do not
handle the virtual root window which tvtwm and swm use; they typically return 
the wrong child of root. A general solution is to add this code or to use it in
your own application where you would normally use RootWindow(dpy,screen):
/* Function Name: GetVRoot
 * Description: Gets the root window, even if it's a virtual root
 * Arguments: the display and the screen
 * Returns: the root window for the client
#include <X11/Xatom.h>
Window GetVRoot(dpy, scr)
Display        *dpy;
int             scr;
Window          rootReturn, parentReturn, *children;
unsigned int    numChildren;
Window          root = RootWindow(dpy, scr);
Atom            __SWM_VROOT = None;
int             i;
  __SWM_VROOT = XInternAtom(dpy, "__SWM_VROOT", False);
  XQueryTree(dpy, root, &rootReturn, &parentReturn, &children, &numChildren);
  for (i = 0; i < numChildren; i++) {
	Atom            actual_type;
	int             actual_format;
	long            nitems, bytesafter;
	Window         *newRoot = NULL;
	if (XGetWindowProperty(dpy, children[i], __SWM_VROOT, 0, 1,
	    False, XA_WINDOW, &actual_type, &actual_format, &nitems,
            &bytesafter, (unsigned char **) &newRoot) == Success && newRoot) {
			root = *newRoot;
			break;
	return root;
[courtesy David Elliott (dce@smsc.sony.com). Similar code is in ssetroot, a
version of xsetroot distributed with tvtwm. 2/91]
A header file by Andreas Stolcke of ICSI on export.lcs.mit.edu:contrib/vroot.h 
functions similarly by providing macros for RootWindow and DefaultRootWindow;
code can include this header file first to run properly in the presence of a
virtual desktop.
Subject: 147)  How do I keep a window from being resized by the user?
	Resizing the window is done through the window manager; window managers
can pay attention to the size hints your application places on the window, but 
there is no guarantee that the window manager will listen. You can try setting 
the minimum and maximum size hints to your target size and hope for the best. 
Subject: 148)  How do I keep a window in the foreground at all times?
	It's rather antisocial for an application to constantly raise itself
[e.g. by tracking VisibilityNotify events] so that it isn't overlapped -- 
imagine the conflict between two such programs running.  
	The only sure way to have your window appear on the top of the stack
is to make the window override-redirect; this means that you are temporarily
assuming window-management duties while the window is up, so you want to do 
this infrequently and then only for short periods of time (e.g. for popup 
menus or other short parameter-setting windows).
[thanks to der Mouse (mouse@larry.mcrcim.mcgill.edu); 7/92]
Subject: 149)  How do I make text and bitmaps blink in X?
	There is no easy way.  Unless you're willing to depend on some sort of
extension (as yet non-existent), you have to arrange for the blinking yourself,
either by redrawing the contents periodically or, if possible, by playing games
with the colormap and changing the color of the contents.
[Thanks to mouse@larry.mcrcim.mcgill.edu (der Mouse), 7/91]
Subject: 150)+ How do I get a double-click in Xlib?
	Users of Xt have the support of the translation manager to help 
get notification of double-clicking.
	There is no good way to get only a double-click in Xlib, because the 
protocol does not provide enough support to do double-clicks.  You have to do 
client-side timeouts, unless the single-click action is such that you can defer
actually taking it until you next see an event from the server.  Thus, you 
have to do timeouts, which means system-dependent code.  On most UNIXish 
implementations, you can use XConnectionNumber to get the file descriptor of 
the X connection and then use select() or something similar on that.
	Note that many user-interface references suggest that a double-click
be used to extend the action indicated by a single-click; if this is the case
in your interface then you can execute the first action and as a compromise
check the timestamp on the second event to determine whether it, too, should
be the single-click action or the double-click action.
[Thanks to mouse@larry.mcrcim.mcgill.edu (der Mouse), 4/93]
Subject: 151)! How do I render rotated text?
	Xlib intentionally does not provide such sophisticated graphics 
capabilities, leaving them up to server-extensions or clients-side graphics
libraries.
	Your only choice, if you want to stay within the core X protocol, is to
render the text into a pixmap, read it back via XGetImage(), rotate it "by 
hand" with whatever matrices you want, and put it back to the server via 
XPutImage(); more specifically:
	1) create a bitmap B and write your text to it.
	2) create an XYBitmap image I from B (via XGetImage).
	3) create an XYBitmap Image I2 big enough to handle the transformation.
	4) for each x,y in I2, I2(x,y) = I(a,b) where 
		a = x * cos(theta) - y * sin(theta)
		b = x * sin(theta) + y * cos(theta)
	5) render I2
	Note that you should be careful how you implement this not to lose
bits; an algorithm based on shear transformations may in fact be better.
	The high-level server-extensions and graphics packages available for X 
also permit rendering of rotated text: Display PostScript, PEX, PHiGS, and GKS,
although most are not capable of arbitrary rotation and probably do not use the
same fonts that would be found on a printer.
	In addition, if you have enough access to the server to install a font
on it, you can create a font which consists of letters rotated at some
predefined angle. Your application can then itself figure out placement of each
[courtesy der Mouse (mouse@larry.mcrcim.mcgill.edu), Eric Taylor 
(etaylor@wilkins.bmc.tmc.edu), and Ken Lee (klee@synoptics.com), 11/90;
Liam Quin (lee@sq.com), 12/90]
	InterViews (C++ UI toolkit, in the X contrib software) has support for
rendering rotated fonts in X.  It could be one source of example code.
[Brian R. Smith (brsmith@cs.umn.edu), 3/91]
	Another possibility is to use the Hershey Fonts; they are 
stroke-rendered and can be used by X by converting them into XDrawLine 
requests. [eric@pencom.com, 10/91]
	The xrotfont program by Alan Richardson (mppa3@syma.sussex.ac.uk) 
(posted to comp.sources.x July 14 1992) paints a rotated font by implementing 
the method above and by using an outline (Hershey) font.
	The xvertext package by Alan Richardson (mppa3@syma.sussex.ac.uk) is a 
set of functions to facilitate the writing of text at any angle.  Version 3.0 
was recently released to alt.sources and comp.sources.misc [3/93]; it is also 
on export as contrib/xvertext.3.0.shar.Z. 
	O'Reilly's X Resource Volume 3 includes information from HP about
modifications to the X fonts server which provide for rotated and scaled text.
Subject: 152)  What is the X Registry? (How do I reserve names?)
	There are places in the X Toolkit, in applications, and in the X
protocol that define and use string names. The context is such that conflicts
are possible if different components use the same name for different things.
	The MIT X Consortium maintains a registry of names in these domains:
orgainization names, selection names, selection targets, resource types,
application classes, and class extension record types; and several others.
	The list as of 7/91 is in the directory mit/doc/Registry on the R5 
tape; it is also available by sending "send docs registry" to the xstuff mail
server.
	To register names (first come, first served) or to ask questions send 
to xregistry@expo.lcs.mit.edu; be sure to include a postal address for
confirmation.
[11/90; condensed from Asente/Swick Appendix H]
David B. Lewis 					faq%craft@uunet.uu.net
		"Just the FAQs, ma'am." -- Joe Friday 
David B. Lewis		Temporarily at but not speaking for Visual, Inc.
day: dbl@visual.com	evening: david%craft@uunet.uu.net
