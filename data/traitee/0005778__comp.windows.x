Frequently-asked questions about the OPEN LOOK Graphical User Interface.
If your question isn't here, please try (at *least*)
	man openwin
	man xnews
	man 7 xview
and looking in the appropriate manuals listed in the Bibliography below
before posting to the comp.windows.open-look, comp.windows.x or
alt.toolkits.xview newsgroups and/or their corresponding mailing lists.
Special Notes:
    * I have not updated this FAQ for the recently-announced OpenWindows 4,
      due to ship later this year.
    * Yes, Sun is moving to Motif, along with all of COSE.  But the Motif to
      which they move will be a new Motif, with some of the OPEN LOOK UI
      features added.
    * Yes, OpenWindows 4 will use DPS instead of NeWS.  NeWS is dead.
      This means TNT is dead, too.
    * XView and OLIT will be supported, but probably not enhanced after the
      next release.  I don't know if there will be a source release of
      XView 3.1 or not.
    * The COSE Environment will include at least some of Sun's DeskSet,
      ported to Motif.  Look for Calendar Manager and Mailtool, at least.
    * Yes, the new Mailtool will be MIME-compliant.
Frequently Asked Questions for X11 are posted to comp.windows.x monthly.
This is version: $Revision: 1.48 $; Last posted version:  1.46
Contents: (in rn and trn you can use control-G to go to the next topic)
    Subject: Terminology: OPEN LOOK, OpenWindows, X11, XView, (MO)OLIT, Motif
    Subject: Window Managers -- olwm, olvwm
    Subject: OpenWindows, Terminals, and Other Displays
    Subject: Configuration Files: Getting started with OpenWindows
    Subject: Key Bindings, Cut and Paste
    Subject: Applications: Finding Out...
    Subject: DeskSet, Calendar Manager, etc.
    Subject: Trouble Shooting: Strange Error Messages
    Subject: Trouble Shooting: It Won't Let Me Type
    Subject: Trouble Shooting: Not authorized to use display
    Subject: Trouble Shooting: other common problems
    Subject: Trouble Shooting: XView problems
    Subject: Fonts
    Subject: Environment Variables
    Subject: Where Can I get It? Ftp, implementations, etc...
    Subject: Bibliography -- books, manuals, journals, papers, beer-mats
    Subject: Getting this File, Revision History, Recent Changes
Subject: Terminology: OPEN LOOK, OpenWindows, X11, XView, OLIT, MOOLIT, Motif
@ What is OPEN LOOK?
    OPEN LOOK is a specification of a Graphical User Interface (GUI).
    A GUI determines the `look and feel' of a system -- the shape of
    windows, buttons and scroll-bars, how you resize things, how you
    edit files, etc.
    The OPEN LOOK GUI is specified, developed and maintained jointly by
    Sun Microsystems and AT&T (or USL?).
    See Also:
	Bibliography
@ What is OpenWindows?
    OpenWindows is a windowing environment that conforms to the OPEN LOOK
    Graphical User Interface Specifications.  It's compatible with the
    X11 window system from MIT as well as (currently) Sun's NeWS and SunView,
    so you can intermix programs written for any of those systems.
    It comes from Sun and also with System V Release 4 from certain vendors.
    OpenWindows is sometimes also called openwin or xnews, after the
    program used to start it and the main executable itself, respectively.
    It should not be called `Windows' or 'OPEN LOOK' or `OpenLook', as
    these terms are either wrong or apply to something else.
    A commerical OpenWindows source licence costs about $5,000 for the server,
    plus about $25,000 for DeskSet, and another $40,000 for ToolTalk.
    The current versions of OpenWindows for various platforms are:
	SunOS 4.1.1 on Sun 3: 2.0
	Solaris 1.x (SunOS 4.1.x) on SPARC: 3.0
	Solaris 2.0 (SunOS 5) on SPARC: 3.0.1
    See Also:
	Mixing X11 and OpenWindows
	Where can I get it?
@ What are OLIT, XView and TNT?
    These are all toolkits for programmers to use in developing programs
    that conform to the OPEN LOOK specifications.  See the Bibliography
    for documentation on the individual toolkits.  Here's a brief summary:
    OLIT was AT&T's OPEN LOOK Intrinsics Toolkit for the X Window system;
    it used a widget set, and was probably the easiest for people who were
    already X11/Xt programmers to learn.  You could buy the source from AT&T,
    although you didn't get the same version tht Sun ship.  Sun includes the
    OLIT library in OpenWindows (q.v.); it is also often included in
    System V Release 4.  It was written in C.  The release of OLIT in
    OpenWindows 3.0 was OLIT 3.0.  OLIT support passed to USL (then a
    division of AT&T, now owned by Novell), who replaced it with MoOLIT (q.v.).
    Note that because of the nature of Xt subclassing, you will probably
    want or need OLIT source in order to develop a large application or
    anything else that uses subclasses.
    [see the proceedings of the 1991 X Technical Conference]
    XView is Sun's toolkit for X11, written in C.  XView is similar in
    programmer interface to SunView.  There's even a shell script to help
    migrate source code from SunView to XView.	 XView is often said to be
    the easiest toolkit to learn if you are not familiar with X Windows.
    The XView toolkit is included in OpenWindows, and full source is
    available by anonymous ftp from export.lcs.mit.edu (and elsewhere).
    The current version of XView from Sun is 3.0.
    Despite rumours to the contrary -- some even from within Sun -- the
    XView toolkit is *NOT* about to be dropped by Sun.  XView *will* be
    included in the next release of OpenWindows, unlike NeWS.
    On the other hand, the XView toolkit is not likely to receive as much
    attention from Sun in the future as OLIT.
    The NeWS Toolkit (TNT) was an object-oriented programming system based
    on the PostScript language and NeWS.  TNT implements many of the
    OPEN LOOK interface components required to build the user interface of
    an application.  It's currently included in OpenWindows.
    The current version of TNT from Sun is 3.1; Release 3 contains some
    incompatibilities with `tNt' 1.0 and TNT 2.0, but Sun are committed to
    supporting the API, at least until they stop NeWS support some time
    later this year and replace it with Display PostScript.  Wail.
    You might ask what `is committed to' means in this context; the
    answer seems to be that it means absolutely nothing.
    Sun currently asserts that it is committed to OLIT, however.
    The C++ User Interface Toolkit (UIT) consists of an object-oriented C++
    class library layered on top of XView and a tool to generate code from
    DevGuide 3 GIL files.  The UIT also includes features that simplify
    event management and the use of PostScript and color.  It is said to be
    compatible with OpenWindows V2 and V3, and presumably V3.0.1, since the
    release mentions that it works on Solaris 2.
    UIT is not an official Sun-supported product but an ongoing project of
    various people within Sun.  It can be found on export.lcs.mit.edu in
    the MIT contrib directory as UITV2.tar.Z (use binary mode!).
@ Where does Motif fit in?
    It doesn't :-).  Motif is an alternative Graphical User Interface that
    is being developed by OSF.	It has a `look and feel' reminiscent of
    Microsoft Windows and the OS/2 Presentation Manager.  There are no non-
    commercial Motif toolkits available, although the Motif source is sold
    reasonably cheaply by OSF.	Although Motif is currently available on
    more platforms than OpenWindows, the OPEN LOOK GUI is almost certainly
    used on many more machines, simply because Sun (and SysVR4) have such a
    large installed base.
    Sun's CD/WARE Volume 2 contains a roadmap for improving Motif
    applications by converting them to OLIT [:-)]; there are also notes in
    the `Periodic Table' OLIT demo, $OPENWINHOME/demo/olittable.
@ What is MoOLIT?
    MoOLIT is a version of OLIT from AT&T/USL that lets users choose between
    a Motif and an OPEN LOOK UI feel at run-time.  It will be part of System V
    Release 4.2.
    Contact: Joanne Newbauer, jo@usl.com, (908) 522-6677
@ What about that Display PostScript thing?
    Sun and Adobe have agreed that Sun will include the DPS extension to X
    in the next release of OpenWindows.  DPS is essentially a badly designed
    hack on top of a slow Level 2 PostScript interpreter intended to give a
    very small subset of the functionality of NeWS whilst simultaneously
    being harder to use, as I understand it.  The only real advantage it
    has over NeWS is that the manual is much smaller, being generally less
    complete; DPS is also available on more kinds of machine.
    Performance on our RS/6000 is not suitable for interactive work;
    what it will be like on the SPARCStation remains to be seen.
    Note that whereas X/NeWS fonts are shared by both subsystems, the DPS
    extension to X does _not_ make Type 1 PostScript fonts available to
    ordinary X11 programs.  It is not like ATM on a PC in this regard.
    (there is at least one third-party version which does make fonts
    available, however)
Subject: Window Managers -- olwm, olvwm
@ What are olwm and olvwm?
    They are window managers.  A window manager is the part of the X Window
    system (e.g. X11) that is responsible for deciding how to lay out windows
    on the screen, and for managing the user's interaction with the windows.
    Olwm is the standard OPEN LOOK window manager.
    It's included with all of the OpenWindows (q.v.) implementations, and
    you can also get the source by ftp, since Sun donated it.
    Olvwm is a version of olwm that manages a `virtual desktop' (hence the
    `v' in its name).  It shows a little map on the screen, with the
    currently displayed area represented by a little rectangle.	 You can
    move around by dragging the rectangle or with the arrow keys.  This
    lets you run several clients (applications) and move the display around
    from one to the other.  Olvwm was derived from the OpenWindows 3.0 olwm
    by Scott Oaks; you need to have XView 3.0 to compile it.
    Get olvwm from an ftp site such as export.lcs.mit.edu (in the contrib
    directory; there are three patches).
@ Can I use my favorite window manager with OpenWindows instead of olwm?
    Yes.  If you use twm, for example, or mwm, you won't be able to use
    the Pin and Unpin feature of olwm, and you (probably) won't see the
    footers some windows use to display certain messages.
    If you use twm, you'll want to use the f.delete function to unpin menus
    and get rid of programs that don't have a `quit' button when not run
    under olwm.
    For twm, put this in your $HOME/.twmrc:
	LeftTitleButton "target" = f.delete
    where "target" is a 16x16 icon from /usr/include/X11/bitmaps.
    Alternatively, try
	# Add a menu to each window managed by twm or tvtwm
	LeftTitleButton ":menu" = f.menu "OL.menu"
	menu "OL.menu" {
	    "Quit"         f.delete
    For mwm, you can double-click on the menu icon on the left of the title
    bar to dismiss a pop-up window (I am told).
    See the manual page for your window manager (twm, etc).
Subject: OpenWindows, Terminals, and Other Displays
@ Can I use olwm and olvwm without OpenWindows or on an X Terminal?
    The OpenWindows xnews server combines SunView, NeWS (PostScript) and X11.
    This means that it can run programs compiled for any of those systems.
    Unfortunately, it means that some OpenWindows programs need either NeWS
    or SunView support, and thus won't run on an X terminal.  This includes
    pageview in particular.
    You can use olwm or olvwm (see above) on an X terminal or a non-Open-
    Windows display, and most OPEN LOOK clients (e.g. OLIT or XView ones)
    will work perfectly well.  You may find that you get complaints about
    fonts not being found.  If so, see the Fonts section below.
    If you are running the window manager built-in to an NCD terminal, you
    may have problems with input focus; setting *Input: True in the terminal's
    XDefault file in /usr/lib/X11/xdm may or may not help.
Subject: Configuration Files: Getting started with OpenWindows
@ What configuration files do I need to know about?
    .xinitrc and .xsessionrc
    The first time you run OpenWindows, a .xinitrc file will be created in
    your login directory ($HOME).  If it already exists, you might have to
    edit it somewhat; it's simplest to move it and any other old X11 files
    you have to another directory, and then merge the old and new files.
    If your site uses xdm, you should use .xsession instead of .xinitrc,
    since xdm doesn't look at your .xinitrc file.
    .openwin-init, .openwin-menu and .openwin-sys
    These are optional files you can create in your $HOME directory,
    depending on which version of olwm or olvwm you use.
    Look in $OPENWINHOME/lib (normally /usr/openwin/lib) for these files
    without the leading . and copy any you want to change.  You may need
    to edit your .xinitrc to get them recognized.  If you are not on an
    X terminal, you will want to run a console window (such as cmdtool -C,
    shelltool -C, xterm -C) or Chuck Musciano's "contool" program so that
    system output will be directed there instead of writing over your screen.
    Note that .openwin-sys is not executed unless you edit .xinitrc.
    .Xdefaults
    You can put X Windows resource specifications in here.  In particular,
    it is a good idea to include at least:
	OpenWindows.FocusLenience:	true
	*Input: TRUE
    These allow non-ICCCM-compliant programs to receive input even if they
    forget to ask for it.
    Props, the program that runs when you select `properties' from the default
    root menu under olwm or olvwm, writes your choices into .Xdefaults.
    Don't put comments in .Xdefaults, since `props' deletes them.
    .startup.ps
    This is the NeWS user profile file, read by OpenWindows (actually xnews)
    on startup.	 This is documented in the NeWS programming manual, near the
    back.  The most useful thing to put here is PostScript code to change
    the keyboard repeat rate, although you must be very careful, since a
    syntax error in the PostScript means that xnews will either not start up
    at all or will get broken in strange ways.	The NeWS manual gives code
    that is both incorrect and insufficient.
    WARNING: things in this file rarely work on both OpenWindows 2 and 3.
    Note that the mouse speed is best set in your .xinitrc with xset m; see
    the man page for xset ("man xset", and "xset -help") for more information.
    Here's what $HOME/.startup.ps  should look like if you want a delay of
    about a third of a second (300000 microseconds), and a repeat rate of
    twenty or so keys per second (30000 microseconds between repeats) for
    OpenWindows 3.  You'll have to experiment a bit because the RepeatTime
    is the delay between keys sent, and thus doesn't include the time to
    process each key, which is probably higher on my 4/110 than on your
    SuperSPARC 10/51 GTi injection :-)  Again, this is for OpenWindows 3...
	% don't want the demos - see p. xxxii of NeWS Toolkit Reference Manual
	% /IncludeDemos? false def
	UserProfile begin
	    /KeyRepeatThresh 0 300000 timeval storetimeval def
	    /KeyRepeatTime 0 30000 timeval storetimeval def
	    % Note: 300000 and 30000 differ greatly...
	end
    You must also have a .user.ps file in the same directory, like this:
	/NeWS 3 0 findpackage beginpackage
	/TNTCore 3 0 findpackage beginpackage
	/TNT 3 0 findpackage beginpackage
	ClassRepeatKeys pop	% force repeat.ps to autoload
	endpackage endpackage endpackage
    If you change these parameters, you can test them without restarting the
    OpenWindows server like this:
	$ psh -i .startup.ps
	Welcome to X11/NeWS Version3
	$ psh -i
	Welcome to X11/NeWS Version3
	/classinit ClassRepeatKeys send
	%%% now press control-D
    You can also either of these two files (.startup.ps and .user.ps) to make
    the root window be "retained", so that a PostScript drawing on the
    background won't be erased when you move windows:
	frambuffer /Retained true put
    will do this.  Note that this may increase the amount of memory used
    by the NeWS server (xnews) dramatically.
    See also:
	Trouble Shooting: It Won't Let Me Type
	Trouble Shooting: Is there an easy way to edit Xdefaults?
	Environment Variables
@ How can I configure OPEN LOOK for a left-handed mouse and keyboard?
    You can use xmodmap to change the mouse buttons, but be prepared for one
    or two occasional surprises.  See also "man 7 xview" for a list of
    keybindings you can change, at least for XView programs.
    With OpenWindows 2.0, you can use defaultsedit to set the mouse mappings
    and then let SunView handle them.  The status returned by svenv should
    tell you whether your server is running under SunView or not; put this
    in your .xinitrc:
    if eval `svenv -env`
    then
	xmodmap -e "pointer = 1 2 3"
	input_from_defaults
    else
	xmodmap -e "pointer = 3 2 1"
    fi
@ How can I get the screen to go blank when the system is idle?
    Run screenblank from /etc/rc.local if you can; it's a boring but
    effective screen saver.  See `man screenblank'.
    Under Solaris 2 you'll need to copy screenblank from an older system, as
    it's not supplied.  Then add a new file in /etc/rc2.d to make the system
    run screenblank automatically.
Subject: Key Bindings, Cut and Paste
@ How do I cut and paste between XTerm and OpenWindows programs?
    To go from XTerm to textedit (say):
    * Select the text you want to copy by dragging the SELECT mouse button
      in xterm
    * Press COPY in the XTerm (this key is L6, or Meta+c (the O'Reilly
      XView manual gets this wrong)
    * Move to the textedit window, and press PASTE (L8 or Meta+v)
    If this doesn't work, see Trouble Shooting: Cut and Paste
   To go the other way, from textedit to XTerm:
    * Select the text in textedit.  No need to use COPY
    * Move to the XTerm window and press ADJUST (the middle mouse button).
    * You can also use the COPY/CUT and PASTE buttons.
@ COPY/PASTE is boring.	 What short-cuts are available?
    Quick Copy within textedit, mailtool, etc:
    * Click SELECT to get a text caret where you want the copied text to go
    * Press and HOLD DOWN the PASTE (or CUT) button
    * Select the text you want to copy/move.  You'll see that it's underlined
      or crossed out, as appropriate.  (In the jed demo it goes grey)
    * Let go of the PASTE (or CUT) button.
    * The text you underlined or crossed out appears at the insert caret.
    Drag and Drop to Move a Selection
    * Select the text you want to copy or move, by dragging or multiple-
      clicking the SELECT or ADJUST mouse button
    * Put the mouse pointer anywhere within the selection
    * Press and HOLD DOWN down the SELECT mouse button, and move the mouse
      pointer a little to the right; you'll see the cursor changes to be the
      first 3 letters of the text (or some other icon).
    * Still holding SELECT down, move the mouse over the point where you want
      to drop the text
    * You may see the mouse pointer change to a rifle-sight or target, to show
      that it's OK to drop things here
    * Let go of SELECT, and the text is moved.	This works in text fields of
      dialogue boxes as well as in text subwindows.
    Drag and Drop to Copy a Selection
    * This is the same as using Drag and Drop to Move a Selection, except that
      you must hold the CONTROL key down as well as the SELECT mouse button.
@ What are the default key bindings in textedit and elsewhere?
    See the man page for textedit(1) for some of them.
    In general, the editing/moving commands go in the opposite direction when
    shifted - e.g. Ctrl+w deletes a word, and Ctrl+W deletes the word to the
    right of the insert point.
	Meta-i - include file	    Meta-f - find selection (forward/backward)
	Ctrl-a - start of line	    Ctrl-< - back word
	Ctrl-e - end of line	    Ctrl-> - forward word
	Ctrl-w - delete word	    Ctrl-u - delete to start/END of line
	Ctrl-Return - move to end/START of document
    See the O'Reilly XView Reference Manual for a list of some of the default
    keys; see also the olwm or olvwm manual page.
@ What can I put in my .ttysrc?	 Where is it documented?
    See the manual page for shelltool.
Subject: Applications: Finding Out...
    Contact SunSoft (or Sun) and ask for the Catalyst OPEN LOOK guide,
    which lists over 200 pages of applications, and also the _huge_
    Catalyst listing of products for Suns, updated six-monthly.
    Sun's free CDWare CD/ROMs each contain demo versions of several popular
    OPEN LOOK applications.  Often you can simply contact the vendor
    concerned to have the license upgraded from demo, and receive the full
    product documentation.
    SunPICS produces a CD/ROM for NeWSPrint users, Printer's Pallate, which
    contains NeWSprint drivers for a variety of printers and plotters, as
    well as 600 scaleable fonts that you can license.
    There is a separate FAQ posting in comp.windows.open-look that lists
    a number of free and commercial aplications; mail lee@sq.com for a
    copy, including OPEN LOOK UI Application List in the Subject for a
    faster reply.
Subject: DeskSet, Mailtool, Calendar Manager, etc.
@ Is there a tty-based interface to cm (Calendar Manager)?
    Yes, cm_delete, cm_insert and cm_lookup; these all have manual pages.
    If "man cm_delete" doesn't work or gives strange messages, see under
    Trouble Shooting: Strange Error Messages, below.
@ How can I arrange to have my .signature included in my outgoing mail?
    The best way is:
    $ cp /usr/lib/.textswrc .
    $ chmod +w .textswrc
    edit .textswrc (use vi, textedit, or whatever you prefer)
    add the follwing:
	cat ~/.signature
    (you might need to change ~ to $HOME)
    Now pressing R3 will insert your .signature file.
Subject: Fonts
@ Does OpenWindows support Type 1 PostScript fonts?
    Yes, under either Solaris 2.0 or 2.1 (I'm not sure which).
    Or, Not Yet, in other words.
    If you have FrameMaker there is a utility to import them, I'm told.
    The 57 fonts supplied with OpenWindows are fully hinted, though, and
    comparing them to the Microsoft Windows and Apple TrueType fonts is
    interesting...  The F3 font format is described in a publication from the
    Sun OpenFonts group, listed in the Bibliography below.  Documentation on
    the unbundled version of TypeScaler is also available from Sun OpenFonts.
    You can buy F3 fonts from SunPICS, Monotype, Linotype, URW and probably
    other major foundries.
    SunPICS' NeWSPrint software supports Type 1 fonts.
@ Improving font rendering time
    Although the Sun type renderer (TypeScaler) is pretty fast, it's not as
    fast as loading a bitmap :-).  You can pre-generate bitmap fonts for sizes
    that you use a lot, and you can also alter and access the font cache
    parameters.	 If you have a lot of memory you might want to increase the
    font cache size.
	$ psh -i
	Welcome to X11/NeWS Version3 <--- psh will say this at you
	currentfontmem =	% type this line ...
	300	% and here's whai my server was using -- 300 Kbytes
	1024 setfontmem
	% Just to check:
	currentfontmem =
    See pp. 328ff of the NeWS 3.0 Programmer's Guide.  You need to say psh -i
    so that the PostScript packages are loaded - see the psh man page.
@ Making bitmap fonts for faster startup:
	$ mkdir $HOME/myfonts
	$ cd $HOME/myfonts
	$ makeafb -20 -M $OPENWINHOME/lib/fonts/Bembo.f3b
	Creating Bembo20.afb
	$ convertfont -b Bembo20.afb
	Bembo20.afb->./Bembo20.fb
	Chars parameter greater than number of characters supplied.
	Bembo20.afb	Bembo20.fb	Synonyms.list
	$ bldfamily
	* Bembo		       ./Bembo.ff (Encoding: latin)
	cat: ./Compat.list: No such file or directory
	$ xset +fp `pwd`
	$ xset fp rehash
    If you want the server to see your new font directory every time,
    add this directory to your FONTPATH environment variable in one
    of your start-up files, e.g. .login or .profile.
@ Converting between font formats (convertfont, etc.)
    You can also use Folio fonts with an X11 server, by converting them to a
    bitmap (X11 bdf format) first.  Your licence forbids you from using the
    fonts on another machine, and unless you have NeWSPrint you shouldn't
    use them for printing.  Having said all that...  you can use makeafb and
    convertfont to generate bdf files that you can compile with bdftosnf or
    bdftopcf.
    Use mftobdf (from the SeeTeX distribution) to convert TeX pk fonts to
    X11 bdf format, which you can then use with either X11 or OenWindows.
    You can also use der Mouse's "getbdf" to get bdf fonts from a running
    X display server -- ftp: larry.mcrcim.mcgill.edu (132.206.1.1) /X/getbdf
@ Xview/OLIT fonts at 100 dpi
    There aren't any.  More precisely, the various text fonts, such as
    Lucida Typewriter Sans, are available at 100 dpi, and in fact are
    scalable under OpenWindows.	 The glyph fonts are bitmaps, and don't
    scale very well.
Subject: Trouble Shooting: Strange Error Messages
@ No manual entry for cm_lookup
    If man doesn't seem to find OpenWindows commands, even though you are
    running OpenWindows, try setting the MANPATH environment variable:
	MANPATH=$OPENWINHOME/share/man:/usr/man; export MANPATH
    or
	setenv MANPATH $OPENWINHOME/share/man:/usr/man
    for csh users.  $OPENWINHOME should be /usr/openwin on most systems.
@ window: Window creation failed to get new fd 
@ window: Base frame not passed parent window in environment 
@ Cannot create base frame.  Process aborted. 
    These messages all come from SunView programs.  SunView was an
    earlier windowing system for Suns, and was not networked.  Some of
    the SunView programs are still around in /usr/bin, and have names
    that are the same as their OpenWindows counterparts.  You almost
    certainly want to run the programs in $OPENWINHOME instead.
    Set your path so that $OPENWINHOME/bin (and $OPENWIN/bin/xview for
    OpenWindows 2) come before /bin (or /usr/bin, they're the same), or
    you'll get the SunView versions of mailtool, cmdtool, shelltool, etc.
@ memory fault - core dumped
    If you get this from the binder, or if binder vanishes suddenly,
    get the following patches:
	100493-02 Binder
	100524-03 Cetables
	100626-03 Tooltalk
@ Trouble compiling Xt, Xmu or OLIT programs: _get_wmShellWidgetClass
    If you are using OpenWindows 3.0 (X11R4-based Xt), contact your local
    Sun office and request the following patches:
100512-02   4.1.x OpenWindows 3.0 libXt Jumbo patch
100573-03   4.1.x OpenWindows 3.0 undefined symbols when using shared libXmu
    If you can't install the patch, a workaround is to add 
	-u get_wmShellWidgetClass -u get_applicationShellWidgetClass
    on the link (ld or cc ... -o ...) line.  An alternative is to add
	-assert nodefinitions
    to CFLAGS in your Makefile, or even in Imake.tmpl.
Subject: Trouble Shooting: It Won't Let Me Type
@ When I try to type into some programs, I just get beeps or nothing happens
    It is a good idea to include at least:
	OpenWindows.FocusLenience:	true
	*Input: TRUE
    in your .Xdefaults file, as these allow non-ICCCM-compliant programs to
    receive input even if they forget to ask for it.
    See the next item for editing .Xdefaults
Subject: Trouble Shooting: Cut and Paste not working
@ I can't paste from xterm to XView (including Sun DeskSet) programs
    Under OpenWindows 2, you need to add the following either to your
    $HOME/.Xdefaults file, or to $OPENWINHOME/lib/app-defaults/XTerm instead:
	XTerm*VT100.Translations: #override \
		<Key>L6:select-set(CLIPBOARD)\n\
		<Key>L8:insert-selection(CLIPBOARD)
    You must not move the mouse between ending the selection and pressing
    L8 (the Paste key)!
    Under OpenWindows 3, this is already in the app-defaults file, so if it
    isn't working, check that XFILESEARCHPATH is set to
	/usr/openwin/lib/%T/%N%S
    and if it isn't, either set it or copy/merge the above lines from
    $OPENWINHOME/lib/app-defaults/XTerm into /usr/lib/X11/app-defaults/XTerm.
    [See also: Environment Variables]
    This version automatically puts each xterm selection onto the clipboard:
	XTerm*VT100.translations: #override\n\
	    ~Ctrl ~Meta<Btn2Up>: insert-selection(PRIMARY,CUT_BUFFER0)\n\
	    ~Ctrl ~Meta<BtnUp>: select-end(PRIMARY,CUT_BUFFER0,CLIPBOARD)\n\
	    <KeyPress>L8: insert-selection(CLIPBOARD)
    [Note: be sure that the \n\ is at the very end of the line, there must
     be no following spaces, and any + or | signs showing that this FAQ file
     was altered must also be removed!]
    If you are using X11R5, you may find that adding the lines
<Key>L10: start-extend() select-end(PRIMARY, CLIPBOARD, CUT_BUFFER0)\n\
       <KeyRelease>L10: kill-selection() \n
    before the <KeyPress>L8 line will make L10 (CUT) work as a cut key!
    If you alter $HOME/.Xdefaults instead, you must use what X calls a
    `more specific' resource name:
	xterm.vt100.translations
    will do.
@ I can't paste from XView (including Sun DeskSet) programs to xterm
    If you don't have the Sun L keys on the left of your keyboard, you can
    use Meta-x, Meta-c and Meta-v for cut, coy and paste respectively.
    You can change the keys by adding the following two lines to
    your .Xdefaults file, edited as you wish (the values shown here are the
    defaults):
	Openwindows.KeyboardCommand.Copy: c+Meta,L6
	OpenWindows.KeyboardCommand.Paste", "v+Meta,L8
    Lists of resources are in the manual page for xview, and also in the
    thinnish blue book `Companion to Volume 7, XView Reference Manual' from
    O'Reilly, and also in the olwm and olvwm manual pages.
@ I always get the same piece of text when I press PASTE (L8, Meta+v)
    Remove the file /tmp/textsw_shelf and see if that helps; see also the
    next item.
@ Cut Copy and Paste don't work at all (OpenWindows only)
    Oh dear.  Use ps -xuaww | grep xv  to check that sv_xv_sel_svc is running
    and that either you or root started it, depending on whether you started
    OpenWindows with "openwin" or by logging in through xdm.
    If not, start it.  If it dies, check that there is no /tmp/.sv_xv_sel_svc
    before restarting it - you may need to be root to remove it, or you can
    reboot your workstation.
    Check that there is space in /tmp (use "df /tmp"), and also see if there
    are a lot of files there with names like /tmp/tty.txt.a01246; if there are
    several hundred of them, cut and paste may take so long that it times out.
    Quit any deskset tools such as mailtool, filemgr and cm (calendar), start
    a terminal emulator and remove and /tmp/tty.txt* and /tmp/Text* files
    that are still there.  It's simplest to quit openwin and start it again
    after doing that, if cut and paste was broken, but if it starts working
    again you can just carry on.  Note that files in /tmp not owned by you
    might be in use by another worker comrade, so don't remove those without
    checking first!
Subject: Trouble Shooting: Not authorized to use display
    If you get error messages that look like
	Xlib:  connection to ":0.0" refused by server
	Xlib:  Internal error during connection authorization check
	Error: Can't Open display
    try, on the machine running OpenWindows or X11,
	xhost +machine
    where "machine" is the computer on which you ran the command that failed.
    If you want to let other users run programs on the same machine as you,
    using your display, you will have to type the bizarre-looking
	xhost +`hostname`
    (or xhost +happyboy, if happyboy is the name of your workstation).
    This lets ANY user on `happyboy' access your display.
    With OpenWindows 3.0 you can also use xauth, and the Programmer's Guide 
    describes how to do this in Chapter 8, p. 101.  This is more secure.
    Also check the man page for fbtab(5) to stop other users accessing the
    framebuffer directly!
    Also note that there is a Sun patch for OpenWindows 3.0 under SunOS 4.1.1
    to fix a serious security problem.  It is available through your local
    Sun Answer Center as well as through anonymous ftp from ftp.uu.net
    [192.48.96.2] system in /sun-dist:
    Fix                     PatchID        Filename            Checksum
    loadmodule              1076118        100448-01.tar.Z     04354  5
    On an X Terminal, there may be a setup menu that lets you change or
    disable the list of hosts that can access the display.
    If you start getting this message after you've been logged in overnight,
    there might be a cron job that's removing the Unix sockets in /tmp
    that are used to communicate with the server when $DISPLAY doesn't have
    a hostname before the :, or is empty.  Have the system administrator
    change the cron script to skip sockets.
Subject: Trouble Shooting: other common problems
@ I get console error messages on my screen and they don't go away (Sun 3 or 4)
    If "refresh" makes the messages vanish, but new ones come along later,
	you need to run "xterm -C" from your .xinitrc, or start one up in
	the background and then  choose Save Workspace from the
	Workspace->Utilities menu.  Better still, pick up "contool" and run
	that.  Get it from export.lcs.mit.edu in the contrib directory.  It
	will monitor the console and open, flash its icon or beep when a
	message appears; it's very easy to configure.
    If "refresh" from the Workspace->Utilities menu doesn't make the messages,
    go away...
	a Sun with a cg4 frame buffer has two screens - you can move the
	mouse off the right-hand (by default) edge of the screen and onto
	a whole new (but monochrome) display, called ":0.1".  See the man.
	page for openwin; I have a shell script that checks for this and,
	if there's a /dev/cgfour0, does
		openwin -dev /dev/cgfour0 -dev /dev/bwtwo0
	If you are running X11 or OpenWindows 2, you might need to add this
	to your .xinitrc or other startup file:
	    eval `svenv -display unix:0.1 -env`
	    olvwm -display unix:0.1
	Later releases of olwm and olvwm do this automatically.
	You can also run switcher -e 0 to get rid of the messages.  Also, see
	the note about contool, above.
@ Is there an easy way of editing .Xdefaults?
    Use `props', which appears in the default root menu as `properties'.
    This starts `props', a property editor which will re-write your
    .Xdefaults after removing comments.  It then applies any changes.
    Keep comments by using "comment." instead of "!", for example,
	comment.*.font: Palatino-Italic-37
@ How do I get the File manager to use emacs instead of textedit?
    set the default editor to
	sh -c "exec emacs -font lucidasanstypewriter-18 \"$FILE\""
    (you can change the font if you prefer a smaller one)
@ How do I run OpenWindows in inverse video?
    This tends not to work under OpenWindows 2.	 With OpwnWindows 3.0,
    there are various ways, including using -bg and -fg options.  If you're
    using OpenWindows 2 on a Sun 3 , probably the best you can do (short of
    upgrading the workstation to a SPARC!) is to use xterm instead of cmdtool.
@ Why don't flat check-boxes work?
    A known bug may make Guide's output dump core if you use these.
    A workaround is to edit the Guide output, as it's only Guide's output
    that's broken, not the actual check-box code.
    This applies only to versions of DevGuide before Devguide 3.0.  If you're
    still using an ancient DevGuide, you should upgrade as soon as possible;
    the new one is fantastic!
@ When I leave OpenWindows, my screen goes blank or my mouse cursor stays
  on the screen.
    Try running clear_colormap; if this helps, put it as the last line in
    the shell script you use to start OpenWindows (e.g. `openwin').
@ When I use snapshot, the system crashes, or the server hangs, or something.
    This was a bug related to some systems only.  The only work-round was to
    use some other screen dump program, such as xwd, xv 2.21 or xgrabsc.
@ Why have some of my function keys stopped working?
    Keys F11 and F12 changed from SunF36 and SunF37 to SunXK_F36 and SunXK_F37
    respectively in OpenWindows 3.  Applications must be recompiled, or you
    might be able to use xmodmap or the public domain xkeycaps program to
    change your keyboard layout back again.
@ When I type shelltool or cmdtool or textedit, I get the Sunview version
    See under "Trouble Shooting: Strange Error Messages" below.
    (see also next item)
@ Mixing X11 and OpenWindows
    (see also next item)
    Note that OpenWindows 3.0 includes the X11R4 core distribution (to patch
    level 18), but not the contrib directory.  These notes apply to
    OpenWindows 2.0, although you could also the do same sort of thing with
    OpenWindows 3.0 and X11R5.
    Install the X11 libraries in /usr/lib/X11.	You can intermix OpenWindows
    and X11R4 or X11R5, they're all compatible in this respect.
    Put the X11 binaries in (for example) /usr/bin/X11.
    Put /usr/bin/X11 last in your PATH, so that you get OpenWindows versions
    of programs instead of X11 ones where appropriate, although this is a
    matter of preference.  In any event, put the OpenWindows bin directory
    first -- see the preceding item for more details on that.  If you have
    /bin (or /usr/bin, they're the same directory on SunOS) earlier in
    your PATH than $OPENWINHOME/bin/xview, you'll get SunView programs instead
    of OpenWindows ones!
    Set LD_LIBRARY_PATH so that /usr/openwin/lib is last, after the X11
    library directory.	This doesn't matter with OpenWindows 3.0, but with
    older versions you'll get error messages from X11 programs if you don't
    do this.  The messages are generally harmless (see next item), although
    xdm core dumps if this isn't right.
    Set OPENWINHOME to the directory containing OpenWindows if it isn't
    /usr/openwin.
    See Also:
	Environment Variables (especially XFILESEARCHPATH).
@ I get error messages on my screen about ld.so: libX11.so.4 not found
    set LD_LIBRARY_PATH to be /usr/openwin.  If you also use X11, use
	     /usr/lib:/usr/5lib:/usr/openwin/lib
    If you put this in a shell script or your .profile, use
    ${OPENWINHOME-/usr/openwin}/lib instead of /usr/openwin; this is for
    /bin/sh; for csh it is different.
@ I launch my filemgr and I get ld.so:map heap error (9) at /dev/zero
    Your system needs to be patched.  Look in $OPENWINHOME/lib/OSpatches
    and install the patch.
@ Why doesn't AnswerBook run for me?
    You must be running OpenWindows to use AnswerBook.	It won't run under
    X11 (on an X terminal or on anything else) because it uses NeWS to draw
    the PostScript text and pictures.
    If you are using OpenWindows 3.0, you need to use the OpenWindows 3.0
    compatible navigator; it's called .navigator.ow3 on the AnswerBook CD/ROM.
    If all AnswerBook users are using OpenWindows 3.0, you can replace
    navigator wih .navigator.ow3 altogether (rename the old one first to
    satisfy your sense of paranoia!)
    The navigator.ow3 binary is also on CD/Ware Vol 2.
    Note that the data files are in PostScript, so you can look at them with
    a PostSript viewer (q.v.).
@ Why aren't there any fish in realxfishdb?
    A fixed version of realxfishdb is available by ftp from
    ftp.eng.auburn.edu [131.204.10.91] as /pub/realxfishdb.Z
@ Why is the Properties choice disabled in the Window menu?
    It isn't implemented yet.  Many programs do respond to the Properties
    Key (L3), though, or have a pop-up menu with Properties on it.
@ File completion in the C-shell is broken in cmdtool
    Sadly true, but use shelltool or xterm instead and it's fine.  It also
    works if you run command tool on a remote machine.
    Fixed in OpenWindows 3.0.1 shipped with Solaris 2.
@ When I run OLIT programs, some of the widgets are red!
    Release 3 of OLIT added mouseless operation; action widgets can be
    selected via the keyboard.  The currently selected item is highlighted
    in red (the `Red Stain') to show that it has the input focus.
    To disable it in most places, add this to your $HOME/.Xdefaults file:
	*traversalOn: off
	*TextEdit.traversalOn: on
	*TextField.traversalOn: on
    You can change the color using (for example)
	*InputFocusColor: grey50
	*input*FocusColor: green
	*List*inputFocusColor: <your background color>
    See the man page resources(3w), at the start of the OLIT 3 Widget Set
    Reference Manual included in the OpenWindows 3 programmer documentation.
    Meanwhile contact your distributor and ask for patch id 100451-30, the
    OLIT/3.0 CTE Jumbo Patch.
@ When I run several programs, the colors on the screen all change when
  I move into a different window! ("colormap flashing")
    This is becasue most hardware can only display a few colors at a time.
    However, you can minimise the effect with the following procedure:
    *  Start all the applications with colors that you wish to reserve.
    *  Run
	cmap_compact save
       to create the .owcolors file
    *  Put the line
	cmap_compact init
       near the start of your start-up file (.xinitrc)
    *  Exit and then restart the window system.
    *  cmap_compact init will push those colors .owcolors to the end of
	the colormap and reserves them.
    Also note that control-L2 locks the colors of the current window, and
    Control-L4 unlocks them -- this is described in the olwm manual page.
@ pageiew uses the wrong colors, or makes the colormap flash (see above):
    This problem was reported by people for some reason running the Motif
    window manager (mwm) with OpenWindows.
    Try running pageview like this:
	$OPENWINHOME/bin/reservecolors -svmono
	$OPENWINHOME/bin/pageview
	$OPENWINHOME/bin/reservecolors -discard
@ XDM breaks things
    Command tool doesn't like being run without a Unix `controlling terminal'.
    Use /etc/setsid to start your command tools and all will be well.
    SunView applications may need to be run with svenv, as in
	svenv -exec /usr/bin/traffic
    because xdm won't set the necessary environment variables.
    Note that the MIT xdm starts up the X server as root, which is a security
    hole for OpenWindows; use the OpenWindows 3.0 xdm or be aware that your
    users can access files and start Unix processes ass root...
@ Function keys 11 and 12 stopped working
    In OpenWindows 3.0, the X11 names ("keysyms") for these keys was changed
    to SunXK_F36 and SunXK_F37.	 Code which uses them should be recompiled,
    or you might be able to get away with
	xmodmap -e 'keysym SunXK_F36 = SunF36'
Subject: Trouble Shooting: XView problems
    This section is here only until an XView FAQ appears, which has been
    promised, but hasn't reached here.	Note that there is also a usenet
    newsgroup, alt.toolkits.xview, although it doesn't sem to have very
    wide distribution and has triffic of the order of one or two articles
    per month.	You should also look at the FAQ in comp.windows.x.
@ how do I set the font of individual Scrolling List items?
    PANEL_LIST_FONT takes an int row_number and an Xv_opaque font_handle.
    PANEL_LIST_FONTS take a NULL terminated list of Xv_opaque font_handles.
    There is no easy way to make an entire list fixed width font.
    You have to make sure that you always specify PANEL_LIST_FONT when you
    insert a new row into that list, or write a convenience function
    insert_row(list, row, string) that hides the nasty bits.
@ how do I keep an XView pop-up window displayed after a button is pressed?
    In the button callback, do
        xv_set(button, PANEL_NOTIFY_STATUS, XV_ERROR, NULL);
    This will keep the window visible.
    You might also need to investigate the MENU_NOTIFY_STATUS attribute.
@ how do I make an XView button look pressed?
    call panel_begin_preview() and panel_cancel_preview(); these are
    documented in -- er -- the XView 3 source...
@ OpenWindows 3 imake doesn't work properly
    Here is Greg Earle's patch, to be applied in $OPENWINHOME; note that you
    should edit lib/config/sun.cf afterwards to get OSName and
    OSMinorVersion right (MinorVersion is 1 in SunOS 4.1.2, for example).
    I have edited the patch a little, so any bugs are mine [lee@sq.com] :-)
*** bin/xmkmf.orig	Wed Sep 18 07:02:02 1991
--- bin/xmkmf	Tue Aug  6 00:39:20 1991
  elif [ -n "$OPENWINHOME" ]; then
! 	args="-DUseInstalled $OPENWINHOME/lib/config"
  else
  elif [ -n "$OPENWINHOME" ]; then
! 	args="-I$OPENWINHOME/lib/config -DUseInstalled -DXCOMM='/**/#'"
  else
*** lib/config/site.def.orig	Wed Sep 18 01:26:19 1991
--- lib/config/site.def	Tue Aug  6 00:44:37 1991
+ #define BinDir $(OPENWINHOME)/bin
+ #define LibDir $(OPENWINHOME)/lib
+ #define IncRoot $(OPENWINHOME)/share/include
+ #define InstallNonExecFile(file,dest)					@@\
+ install:: file								@@\
+ 	$(INSTALL) -c $(INSTDATFLAGS) file dest
+ #define NullParameter
[Note: the patch is new, but I have not marked each line with a "+" -- Liam]
Subject: Environment Variables
    Environment variables, and plausible values to use -- this list doesn't
    take into account any local changes that you might have made, of course.
    This list is for OpenWindows 3.0 -- differences for OpenWindows 2.0 are
    marked, and I've added some comments for users of X11R4 and X11R5, too.
    DISPLAY  The name of the X Windows Display to use
	:0.0 (on the local machine, the one actually running X11 or xnews)
	:0.1 (on some machines for a second, monochrome screen)
	machine-running-unix:0.0 (on other machines)
	(You may need to do "xhost +other-machine" to let programs on other
	machines use your display; see also under Trouble Shooting, and see
	the section on xauth in the OpenWindows Version 3 Programmer's Guide,
	See also: console messages, under Trouble Shooting
    FONTPATH  Where xnews searches for fonts
	/usr/openwin/lib/fonts
	(you can also use "xset fp+ dir" to add a directory to the font path,
	but you may have to do "xset fp rehash" afterwards.  This is fine
	under OpenWindows, but many X11 servers have font problems)
    HELPPATH  Where XView looks when you press the Help key (or F1)
	/usr/openwin/lib/locale:/usr/openwin/lib/help
	(On SunOS 4.0.*, or with OpenWindows 2.0, omit the first entry, which
	is for sites using a local other than "C" or "USA").
    LD_LIBRARY_PATH   Where to look to find shared C libraries
	/usr/lib:/usr/5lib:/usr/openwin/lib:/usr/CC/`arch`
	(the /usr/CC/`arch`/lib entry is only needed if you use C++ programs)
    OPENWINHOME	 Where OpenWindows lives
	/usr/openwin  
    KEYBOARD, MOUSE -- serial devices to use instead of the console
	(don't set these for normal use; /dev/kbd and /dev/mouse)
    PATH  Where the Shell searches for programs to run
	$(OPENWINHOME)/bin:$(OPENWINHOME)/bin/xview:/usr/local/bin:.\
	$HOME/bin.`arch`:/usr/ucb:/usr/bin:/usr/bin/X11:/usr/hosts:\
	(you will certainly want to change this example!  There is no
	$(OPENWINHOME)/bin/xview in OpenWindows 3.0)
    XFILESEARCHPATH  Where programs look for app-defaults files
	/usr/openwin/lib/%T/%N%S
        (This is set automatically by "openwin" in OpenWindows 3.0)
        You might want to use /usr/lib/X11/%T/%N%S, or perhaps both,
        separated with a :, for example (for sh users)
            XFILESEARCHPATH=$OPENWINHOME/lib/%T/%N%S:/usr/lib/X11/%T/%N%S
	    export XFILESEARCHPATH
	If you use X11R5, you might instead want
	    /usr/lib/X11/%L/%T/%N%C%S:
	    /usr/lib/X11/%l/%T/%N%C%S:
	    /usr/lib/X11/%T/%N%C%S:
	    /usr/lib/X11/%L/%T/%N%S:
	    /usr/lib/X11/%l/%T/%N%S:
	    /usr/lib/X11/%T/%N%S:
	    $OPENWINHOME/lib/%T/%N%S
	(put all this on one line, though, with no spaces!)
	Together with the following in lib/Xinitrc
	xrdb -merge <<'END_XRDB'
	   *customization:
	xrdb -merge <<'END_XRDB'
	#ifdef COLOR
	   *customization:  -color
	#endif
	you automatically get a color oclock, editres, bitmap, xcalc, and
	xlogo since they use the "*customization" resource appearing as %C in
	the XFILESEARCHPATH. (see oclock (n))
	according to Rainer Sinkwitz <sinkwitz@ifi.unizh.ch>.
Subject: Where Can I get It? Ftp, implementations, etc...
    XView 3.0 is available by anonymous ftp from export.lcs.mit.edu and
    elsewhere.
    MoOLIT can be bought from AT&T in source form.
    OpenWindows can be obtained from Sun, or you can get the source from
    Interactive Systems Inc.  It is also included in some vendors' System V
    Release 4 implementations, although that's not always the latest version.
    The current release of OpenWindows from Sun for supported architectures
    is 3.0; for the Sun 3 series it is frozen at OpenWindows 2.0.
    Note that Sun includes OpenWindows with SunOS, and it is also included as
    the windowing system for Solaris.
    There are said (by Sun) to be over 35 ports of OpenWindows either
    available now or in progress.  Unfortunately, none of them seem to
    be available from anywhere.  Contact anthony@ovi.com for more information.
Subject: Bibliography: books, manuals, journals, papers, beer-mats
    The OPEN LOOK (tm) Graphical Interface is documented in two books:
	Sun Microsystems Inc., `OPEN LOOK Graphical User Interface Application
	Style Guidelines', Addison Wesley, 1989
    and
	Sun Microsystems Inc., `OPEN LOOK Graphical User Interface Functional
	Specification', Addison Wesley
    The Main documentation for the X Window system comes from
    O'Reilly & Associates in about nine or ten volumes.
    The most useful for OPEN LOOK users are:
	Volume 1: XLib Programming Manual
	Volume 2: XLib Reference Manual
	Volume 3: X Window System User's Guide
	    (An OPEN LOOK edition of Volume 3 should appear later this year)
	Volume 7: XView Programmer's Manual [Dan Heller]
	    [make sure you get the 3rd edition for XView 3.0]
	Companion to Volume 7: XView Reference Manual [Ed. Thomas Van Raalte]
	The Companion to Volume 7 is an expanded version of the Attribute
	Summary from the previous edition of the XView Programming Manual,
	together with other reference information, so that in practice you
	have to buy both books.
	O'Reilly also have a thinnish orange book on the differences between
	X11R4 and RX115.
	OLIT programmers will also want the Xt books - volumes 4 and 5.
	There is a new big fat green Vol 5 updated for X11R5.
	A journal, The X Resource, may also be of interest.
	O'Reilly & Associates, 103 Morris Street, Suita A, Sebastopol, CA 95472
	+1 707 829-0515, or, in the USA and Canada only, 1-800-998-9938
	Fax: +1 707-829-0104.
	Email nuts@ora.com or uunet!ora!nuts.
	For other distributors: mail, FAX, or call +1 707-829-0515.
    Some of the O'Reilly examples are available fro ftp from
    export.lcs.mit.edu in the contrib/OReilly directory.
    The System V Release 4 Documentation from Prentice Hall may also include
    a section on OpenWindows.
    David Miller describes programming with OLIT in his
	`An OPEN LOOK At Unix' (M&T press).
    Nabajyoti Brkakati gives an excellent introduction to X and to OLIT
    programming, as well as setting up and using X and OpenWindows, in:
	`Unix[R] Desktop Guide to OPEN LOOK'
	You can get the examples from this book as
	    export.lcs.mit.edu:contrib/naba-olguide-examples.tar.Z
    Also about using OLIT, and Xt in particular:
	The X Window System: Programming and Applications with Xt,
	OPEN LOOK Edition,
	Doug Young and John Pew, Prentice Hall, 1992,
    There are also HP Widgets and Motif (ugh) versions of this book.
    The example source code in this book can be obtained by ftp from
    export.lcs.mit.edu, file "contrib/young.pew.olit.Z".
    There is an introduction to XView in
	`Writing Applications For Sun Systems', Vol 1, `A Guide for
	Macintosh(R) Programmers' (Sun Microsystems, pub. Addison Wesley)
    To learn more about the NeWS and PostScript languages, see
	The NeWS Book, Springer Verlag, 1989 (sadly, a little out of date)
	PostScript Language Reference Manual, Second Edition,
	Adobe Systems Inc., Addison Wesley, 1990 ["the Red Book"]
	    Note that OpenWindows 3 is a level 1 PostScript implementation,
	    with certain Level 2 features (such as Composite Fonts) to some
	    degree.
	PostScript Language Tutorial and Cookbook,
	Adobe Systems Inc., Addison Wesley, 1985 ["The blue book"]
    There's at least one book on using Solaris (i.e. SunOS).
    Sun also supplies a large amount of documentation with OpenWindows,
    although you may have to order it separately.  Here's what I have; they
    are each a little over 21 cm square (wider than A4 paper), and vary from
    about 1 cm to about 3cm thick.  They say `User's Guide' or `Programmer's
    Guide' on the front.  The User manuals have a red stripe on the bottom,
    and the Programmer ones have a green stripe.
    800-6006-10 OpenWindows Version 3 Release Manual
    800-6029-10 OpenWindows Version 3 Installation and Start-Up Guide
    800-6231-10 OpenWindows Version 3 DeskSet Reference Guide
    800-6618-10 OpenWindows Version 3 User's Guide
    800-6323-10 Desktop Integration Guide [also available in bookstores?]
    800-6027-10 Programmer's Guide
    800-6005-10 OpenWindows Version 3 Reference Manual [the man pages]
    800-6319-10 The NeWS Toolkit 3.0 Reference Manual
    800-6736-10 NeWS 3.0 Programming Guide
    800-6055-10 OLIT 3.0 Widget Set Reference Manual
    800-6198-10 XView 3.0 Reference Manual: Converting SunView Applications
    800-6854-10 F3 Font Format Specification [order separately]
    There are also some other sets of documentation, including the TypeScaler
    documentation from the OpenFonts group, for example.  There doesn't seem
    to be a complete list anywhere.
    ??????????? ToolTalk 1.0 Setup and Administration Guide (SunSoft, 1991)
    800-6093-10 ToolTalk 1.0 Programmer's Guide (SunSoft, 1991)
    There might be documentation about the Link Manager somewhere, too.
    AT&T includes several large thorny bushes' worth of paper with OLIT.
    Sun's AnswerBook CD/ROM contains a lot of the above documentation,
    including some of the O'Reilly books (not the XView 3 Volume 7, though).
    Volume 8 of the O'Reilly series is about X Administration, and mentions
    OpenWindows, although it is primarily aimed at X11R5.
    Several other books are in the works...
Subject: Getting this File, Revision History, Recent Changes
    Mail lee@sq.com to ask for it.  Douglas N. Arnold (dna@math.psu.edu)
    keeps an up-to-date copy on ftp.math.psu.edu (currently 146.186.131.129)
    in the file ~ftp/pub/FAQ/open-look.
    The net.answers archives and servers may or may not know about this file,
    since they've just changed hands and this file was previously in one
    archive but not the other.
    $Id: open-look.faq,v 1.48 93/05/09 18:03:13 lee Exp $
Acknowledgements:
    Andrei Arkhipov <andr@elvis.sovusa.com> (Feb/binder patch)
    Douglas N Arnold <dna@math.psu.edu> (Feb/various changes)
    Ian Darwin <ian@sq.com>
    Christopher Davis <ckd@eff.org>
    Paul Eggert <eggert@bi.twinsun.com> (Feb/screenblank on Solaris 2.1)
    R.Stewart Ellis <elliss@frith.egr.msu.edu> (Feb/-assert nodefinitions)
    Jeff Fleck <jefff@meaddata.com> (Feb/the colormap stuff)
    Rick Heli <Rick.Heli@Eng.Sun.CO> (Feb/including .signature)
    Nicholas Hounsome <nh@cbnewsg.cb.att.com> (Feb/Xt/OLIT cc workaround)
    Larry Matthias <matthias@artos.larc.nasa.gov> (Feb/NeWS colormap flashing)
    John B. Melby <melby%yk.fujitsu.co.jp@fai.com> (Feb/South Paws)
    Christian Sebeke <sebeke@frodo.lfi.uni-hannover.de> (Feb/Xt jumbo patch)
    Kevin W. Thomas <kwthomas@nsslsun.nssl.uoknor.edu> (Mar/olvwm patches)
    Larry W. Virden <lvirden@cas.org> (Mar/various comments)
    And many others...	You get deleted from this list after a while.
Liam Quin, Manager of Contracting, SoftQuad Inc, +1 416 239 4801 lee@sq.com
OPEN LOOK UI FAQ; Metafont list; HexSweeper NeWS game; lq-text text retrieval
