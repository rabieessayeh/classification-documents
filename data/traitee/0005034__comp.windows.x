Archive-name: x-faq/part1
Last-modified: 1993/04/04
This article and several following contain the answers to some Frequently Asked 
Questions (FAQ) often seen in comp.windows.x. It is posted to help reduce 
volume in this newsgroup and to provide hard-to-find information of general 
interest.
		Please redistribute this article!
This article includes answers to the following questions, which are loosely
grouped into categories. Questions marked with a + indicate questions new to 
this issue; those with significant changes of content since the last issue are 
marked by !:
  1)! What books and articles on X are good for beginners?
  2)! What courses on X and various X toolkits are available?
  3)! What conferences on X are coming up?
  4)  What X-related public mailing lists are available?
  5)  How can I meet other X developers? 
  6)  What related FAQs are available?
  7)  How do I ask a net-question so as to maximize helpful responses?
  8)  What publications discussing X are available?
  9)  What are these common abbreviations/acronyms?
 10)  What is the ICCCM? (How do I write X-friendly applications?)
 11)  What is the X Consortium, and how do I join?
 12)  Just what are OPEN LOOK and Motif?
 13)  Just what is OpenWindows?
 14)  Just what is DECWindows?
 15)  What is PEX?
 16)  What is "low-bandwidth X" (LBX)? XRemote? PPP? SLIP? CSLIP?
 18)! What are all these different window managers?
 19)  Why does my X session exit when I kill my window manager (sic)?
 20)  Can I save the state of my X session, like toolplaces does?
 21)  How do I use another window manager with DEC's session manager?
 22)  How do I change the keyboard auto-repeat rate?
 23)  How do I remap the keys on my keyboard to produce a string?
 24)! How do I make a screendump or print my application?
 25)  How do I make a color PostScript screendump of the X display?
 26)  How do I make a screendump including the X cursor?
 27)  How do I convert/view Mac/TIFF/GIF/Sun/PICT/img/FAX images in X?
 28)  How can I change the titlebar of my xterm window?
 29)  Where can I find the xterm control sequences?
 30)- Why does the R3 xterm, et al, fail against the R4 server?
 31)  How can I use characters above ASCII 127 in xterm ?
 32)  Why are my xterm menus so small?
 33)  How can I print the current selection?
 34)  How does Xt use environment variables in loading resources?
 35)  How to I have the R4 xdm put a picture behind the log-in window?
 36)  Why isn't my PATH set when xdm runs my .xsession file?
 37)  How do I keep my $DISPLAY when I rlogin to another machine?
 38)  How can I design my own font?
 39)  Why does adding a font to the server not work (sic)?
 40)  How do I convert a ".snf" font back to ".bdf" font?
 41)  What is a general method of getting a font in usable format?
 42)  How do I use DECwindows fonts on my non-DECwindows server?
 43)  How do I add ".bdf" fonts to my DECwindows server?
 44)! How can I set backgroundPixmap in a defaults file? (What is XPM?)
 45)  Why can't I override translations? Only the first item works.
 46)  How can I have xclock or oclock show different timezones?
 47)  I have xmh, but it doesn't work. Where can I get MH?
 48)  Why am I suddenly unable to connect to my Sun X server?
 49)  Why don't the R5 PEX demos work on my mono screen?
 50)! How do I get my Sun Type-[45] keyboard fully supported by Xsun?
 51)  How do I report bugs in X?
 52)  Why do I get "Warning: Widget class version mismatch"?
 53)  Where can I find a dictionary server for xwebster?
 55)  Is X public-domain software?
 56)  How compatible are X11R3, R4, and R5? What changes are there?
 57)! Where can I get X11R5 (source and/or binaries)?
 58)! Where can I get patches to X11R5?
 59)  What is the xstuff mail-archive?
 60)! Where can I get X11R4 (source and binaries)?
 61)  Where can I get OSF/Motif?
 62)  Does Motif work with X11R4? X11R5?
 63)  Where can I get toolkits implementing OPEN LOOK?
 64)! Where can I get other X sources? (including R5 modifications)
 65)! Where can I get interesting widgets?
 66)  Where can I get a good file-selector widget?
 67)  What widget is appropriate to use as a drawing canvas?
 68)  What is the current state of the world in X terminals?
 69)  Where can I get an X server with a touchscreen or lightpen?
 70)  Where can I get an X server on a PC (DOS or Unix)?
 71)  Where can I get an X server on a Macintosh running MacOS?
 72)  Where can I get X for the Amiga?
 73)  Where can I get a fast X server for a workstation?
 74)! Where can I get a server for my high-end Sun graphics board?
 75)  Where can I get an "X terminal" server for my low-end Sun 3/50?
 76)  What terminal emulators other than xterm are available?
 77)! Where can I get an X-based editor or word-processor?
 78)  Where can I get an X-based mailer?
 79)! Where can I get an X-based paint/draw program?
 80)! Where can I get an X-based plotting program?
 81)  Where can I get an X-based spreadsheet?
 82)  Where can I get X-based project-management software?
 83)  Where can I get an X-based PostScript previewer?
 84)  Where can I get an X-based GKS package?
 85)  Where can I get an X-based PEX package?
 86)  Where can I get an X-based TeX or DVI previewer?
 87)  Where can I get an X-based troff previewer?
 88)! Where can I get a WYSIWYG interface builder?
 89)  Where can I find X tools callable from shell scripts?
 90)  Where can I get an X-based debugger?
 91)! How can I "tee" an X program identically to several displays?
 92)  TOPIC: BUILDING THE X DISTRIBUTION [topic needs updating to R5]
 93)  What's a good source of information on configuring the X build?
 94)  Why doesn't my Sun with a cg6 work with R5?
 95)  Why doesn't my Sun with SunOS 4.1 know about _dlsym, etc.?
 96)  What is this strange problem building X clients on SunOS 4.1.2?
 97)  Why can't gcc compile X11R4 on my SPARC?
 98)  What are these I/O errors running X built with gcc?
 99)  What are these problems compiling X11R4 on the older Sun3?
100)  What are these problems compiling the X server on SunOS 4.1.1?
101)  What are these problems using R4 shared libraries on SunOS 4?
102)  Can OLIT programs run with R5 Xt? (_XtQString undefined)
103)  How do I get around the SunOS 4.1 security hole?
104)  How do I get around the frame-buffer security hole?
106)  What is Imake?
107)  Where can I get imake?
108)  I have a program with an Imakefile but no Makefile. What to do?
109)  Why can't I link to the Xlib shape routines?
110)  What are these problems with "_XtInherit not found" on the Sun?
111)  Why can't I compile my R3 Xaw contrib programs under the new X?
113)  Why doesn't my program get the keystrokes I select for (sic)?
114)  How do I figure out what window manager is running?
115)  Is there a skeleton X program available?
116)  Why does XtGetValues not work for me (sic)?
117)  Why don't XtConfigureWidget/XtResizeWidget/XtMoveWidget work?
118)  Why isn't there an XtReparentWidget call like XReparentWindow?
119)  I'm writing a widget and can't use a float as a resource value.
120)  Is this a memory leak in the X11R4 XtDestroyWidget()?!
121)  Are callbacks guaranteed to be called in the order registered?
122)  Why doesn't XtDestroyWidget() actually destroy the widget?
123)  How do I query the user synchronously using Xt?
124)  How do I determine the name of an existing widget?
125)  Why do I get a BadDrawable error drawing to XtWindow(widget)?
126)  Why do I get a BadMatch error when calling XGetImage?
127)  How can my application tell if it is being run under X?
128)  How do I make a "busy cursor" while my application is computing?
129)  How do I fork without hanging my parent X program?
130)  Can I make Xt or Xlib calls from a signal handler?
131)  What are these "Xlib sequence lost" errors?
132)  How can my Xt program handle socket, pipe, or file input?
133)  How do I simulate a button press/release event for a widget?
134)  Why doesn't anything appear when I run this simple program?
135)  What is the difference between a Screen and a screen?
136)  Can I use C++ with X11? Motif? XView?
137)  Where can I obtain alternate language bindings to X?
138)  Can XGetWindowAttributes get a window's background pixel/pixmap?
139)  How do I create a transparent window?
140)  Why doesn't GXxor produce mathematically-correct color values?
141)  Why does every color I allocate show up as black?
142)  Why can't my program get a standard colormap?
143)  Why does the pixmap I copy to the screen show up as garbage? 
144)  How do I check whether a window ID is valid?
145)  Can I have two applications draw to the same window?
146)  Why can't my program work with tvtwm or swm?
147)  How do I keep a window from being resized by the user?
148)  How do I keep a window in the foreground at all times?
149)  How do I make text and bitmaps blink in X?
150)+ How do I get a double-click in Xlib?
151)! How do I render rotated text?
152)  What is the X Registry? (How do I reserve names?)
If you have suggestions or corrections for any of these answers or any 
additional information, please send them directly to uunet!craft!faq;
the information will be included in the next revision (or possibly the one 
after that; thanks for the many suggestions which haven't been incorporated 
yet). 
This version of the FAQ is in the process of having R3 information replaced
by R5 information.
This posting is intended to be distributed at approximately the beginning of 
each month. New versions are archived on export.lcs.mit.edu and are also 
available from mail-server@pit-manager.mit.edu and archive-server@nic.switch.ch
(send "help").
The information contained herein has been gathered from a variety of sources. 
In many cases attribution has been lost; if you would like to claim 
responsibility for a particular item, please let me know. 
Conventions used below: telephone numbers tend to be Bell-system unless 
otherwise noted; prices on items are not included; email addresses are those
that work from the US.
X Window System is a trademark of the Massachusetts Institute of Technology. 
Other trademarks are the property of their respective owners.
(Note: a script by George Ferguson (ferguson@cs.rochester.edu) to pretty-print
this faq is available from ugle.unit.no:/pub/X11/contrib/xfaq2texinfo.)
Subject:   0)  TOPIC: BASIC INFORMATION SOURCES AND DEFINITIONS
Subject:   1)! What books and articles on X are good for beginners?
	Ken Lee of SynOptics (klee@synoptics.com) regularly posts to 
comp.windows.x and ba.windows.x a bibliography containing cites of all known 
reference books and how-to manuals and also cites of selected technical 
articles on X and X programming; it is ftp-able as 
	export.lcs.mit.edu:/contrib/Xbibliography and 
	gatekeeper.dec.com:/pub/X11/contrib/Xbibliography
Here is an unordered set of the reference books and tutorials most useful for
beginners; most appear on that list [comments are gathered from a variety of 
places and are unattributable]:
Asente, Paul J., and Swick, Ralph R., "X Window System Toolkit, The Complete
Programmer's Guide and Specification", Digital Press, 1990.  The bible on Xt. A
treasury of information, excellent and invaluable.  Distributed by Digital 
Press, ISBN 1-55558-051-3, order number EY-E757E-DP; and by Prentice-Hall, 
ISBN 0-13-972191-6. Also available through DEC Direct at 1-800-DIGITAL. 
[The examples are on export.lcs.mit.edu in contrib/ and on gatekeeper.dec.com 
(16.1.0.2) in pub/X11/contrib as asente-swick.examples.tar.Z.  They were also 
posted to comp.sources.x as xt-examples/part0[1-5].]
Jones, Oliver, Introduction to the X Window System, Prentice-Hall, 1988, 1989.
ISBN 0-13-499997-5. An excellent introduction to programming with Xlib.  
Written with the programmer in mind, this book includes many practical tips 
that are not found anywhere else. This book is not as broad as the O'Reilly 
Xlib tutorial, but Jones is an experienced X programmer and this shows in the 
quality and depth of the material in the book. Originally written for X11R1, 
recent printings have included corrections and additions and current material.
Young, Doug. "The X Window System: Applications and Programming with Xt (Motif 
Version)," Prentice Hall, 1989 (ISBN 0-13-497074-8). The excellent tutorial 
"X Window System Programming and Applications with Xt," (ISBN 0-13-972167-3) 
updated for Motif. [The examples are available on export; the ones from the 
Motif version are in ~ftp/contrib/young.motif.tar.Z.]
Young, Doug and John Pew, "The X Window System: Programming and Applications 
with Xt, OPEN LOOK Edition" (ISBN 0-13-982992-X). The tutorial rewritten for 
OLIT, with new examples and drag/drop information. [Examples are on export in
youg.olit.tar.Z and in you OpenWindows 3 distribution in 
$OPENWINHOME/share/src/olit/olitbook.]
Heller, Dan. "Motif Programmers Manual". The 6th Volume in the O'Reilly series
covers Motif application programming; it's full of good examples. With Motif
reference pages. (ISBN 0-9937175-70-6.)  [The examples are available on uunet
in comp.sources.x and nutshell archives.] [A Motif 1.2 will be out soon.]
Scheifler, Robert, and James Gettys, with Jim Flowers and David Rosenthal, "X 
Window System: The Complete Reference to Xlib, X Protocol, ICCCM, XLFD, X 
Version 11, Release 5, Third Edition," Digital Press, 1992. "The Bible" in its 
latest revision, an enhanced version of X documentation by the authors of the 
Xlib documentation. This is the most complete published description of the X 
programming interface and X protocol. It is the primary reference work and is 
not introductory tutorial documentation; additional tutorial works will usually
be needed by most new X programmers.  Digital Press order EY-J802E-DP, ISBN 
Nye, Adrian, "Xlib Programming Manual, Volume 1" and "Xlib Reference Manual, 
Volume 2," O'Reilly and Associates. A superset of the MIT X documentation; the 
first volume is a tutorial with broad coverage of Xlib, and the second 
contains reference pages for Xlib functions and many useful reference 
appendices.  Both cover X11R5 (and R4). ISBN 0-937175-26-9 (volume 1) and ISBN 
0-937175-27-7 (volume 2). 
Nye, Adrian, and Tim O'Reilly, "X Toolkit Programming Manual, Volume 4,"
O'Reilly and Associates, 1989. The folks at O'Reilly give their comprehensive
treatment to programming with the MIT Intrinsics; R4 versions are now
available, as is a Motif 1.1 version (Volume 4M).
O'Reilly, Tim, ed.,  "X Toolkit Reference Manual, Volume 5," O'Reilly and 
Associates. A professional reference manual for the MIT X11R4 and X11R5 Xt.
Mansfield, Niall. "The X Window System: A User's Guide," Addison-Wesley, 1989.
A tutorial introduction to using X, now upgraded for R4. ISBN 0-201-51341-2.
Quercia, Valerie and Tim O'Reilly. "X Window System User's Guide," O'Reilly and
Associates. A tutorial introduction to using X. ISBN 0-937175-36-6.
Also available in R4 and Motif flavors.
Mui, Linda and Eric Pearce. "X Window System Administrator's Guide for X11 R4 
and R5" [ORA Volume 8]. Help for X users and administrators. 
(Prentice-Hall ordering is 201-767-5937. O'Reilly ordering is 800-998-9938.)
In addition, check the X11R4 and X11R5 core distribution in doc/tutorials for 
some useful papers and tutorials, particularly the file answers.txt.  "Late 
Night's Top Ten X11 Questions" by Dave Lemke (lemke@ncd.com) and Stuart Marks 
(smarks@sun.com) answers other common questions and some of these here in more
detail.
New R5 versions of the O'Reilly references (not yet Volume 6) are now available
[8/92].  A single volume, "Programmer's Supplement for R5" by David Flanagan, 
provides an overview of new R5 features; it includes man pages for Xlib, Xt, 
and Xmu. [ISBN  0-937175-86-2]
Subject:   2)! What courses on X and various X toolkits are available?
	Advanced Computing Environments periodically offers at least a two-day
Introduction course. Contact Susie Karlson at 415-941-3399 for information.
	AT&T offers training in Xlib and in the Xol set. Contact AT&T Corporate
Education & Training for more info; 1-800-TRAINER in the USA.
	BIM Educational Services offers training in X administration and in
programming with Xt/Motif and Open Windows; the courses are given near 
Brussels. Info: edu@sunbim.be, voice +32-(0)2-7595925, fax +32-(0)2-7599209.
	Communica Software Consultants offers three-day hands-on courses in X 
designed for the X Window System developer and programmer. Contact Chris 
Clarkson, telephone 61 8 3732523, e-mail communica@communica.oz.au. [12/92]
	Cora Computer Technologies (516-485-7343) offers several courses.
	GHCT offers a one week lecture/lab course for programmmers designed by
Douglas Young based on his book "The X Window System: Programming and Applica-
tions with Xt, OSF/Motif Edition". Information: Brian Stell (415-966-8805 or
ghct!brian@sgi.com).
	GHG offers a range of courses on X and Motif. Information: 713-488-8806
or training-info@ghg.hou.tx.us.
	Hands On Learning has live training and self-paced video workshops on 
topics such as using and/or programming X, Xlib, Xm, Xt, and widget-writing. 
Information: 617-272-0088, 800-248-9133.
	Hewlett-Packard (1-800-HPCLASS; or contact your local HP center) offers
a 2-day "Introduction to X", a 5-day Xlib course, a 1-day Xt and Motif 1.1 
seminar, and a 5-day Motif lab course.
	Integrated Computer Solutions, Inc., offers several multi-day, hands-on
courses on X, Xt, and the Xaw and Motif widget sets, in particular. Information
is available at 617-621-0060 and info@ics.com.
	Intelligent Visual Computing teaches several lab courses on-site for
Motif and XView. IVC is at 1-800-776-2810 or +1 919-481-1353 or at 
info@ivc.com.
	Iris Computing Laboratories offers five-day Xlib and Xt courses.
Info: +1-505-988-2670 or info@spectro.com.
	IXI Limited (+44 223 462 131) offers regular X training courses for 
both programmers and non-technical managers. See also: Unipalm, below.
	Learning Tree International offers a four-day course in X Window System
applications development, including Xlib and some information on Motif.  For 
more info call 800-824-9155 (213-417-3484); 613-748-7741 in Canada. Courses are
offered in major North American cities; also in London, Stockholm, Tokyo, and 
elsewhere.
	Lurnix offers 4-day "type-along courses" on Xt; the course is being
ported from Xaw to Xm. Information is available at 800-433-9337 (in CA: -9338).
	Mitch Trachtenberg and Associates offers regular 5-day lab courses on
programming with OSF/Motif, usually in but not limited to Cambridge, MA. 
Info: +1 617-225-0440, info@mta.com.
	Non Standard Logics (+33 (1) 43 36 77 50; requests@nsl.fr) offers
courses on programming with Xlib, Motif, and creating Motif widgets.
	OSF Educational Services (617-621-8778) offers one-day seminars and 
one-week Motif lab courses.
	John A. Pew offers a 5-day course on OLIT, possibly based on his book
on that subject; 408-224-5739.
	SCO (+44 923 816344, scol-info@sco.COM) offers training for its Open 
Desktop (Motif) environment in the UK and Europe.
	Software Pundits (617-270-0639) offers a range of courses.
	Technology Exchange (617-944-3700) offers a 4-day Xlib/Xt/Motif course.
	TeleSoft is now offering a 1-day plus 3-day seminar on X and Motif.
Information: Bruce Sherman (619-457-2700, bds@telesoft.com).
	Unipalm XTech offers OSF's 5-day Motif course and a 1-day overview on 
X.  Information: Unipalm Training at +44 952  211797, xtech@unipalm.co.uk.
	The University of Edinburgh is developing a series of courses on X and
related topics primarily for non-profit-making training in academia but also 
for commercial use. Information: Cliff Booth, Unipalm Ltd, phone +44 223 
420002, fax +44 223 426868.
	Various other vendors are also beginning to offer X training, usually 
specific to a proprietary toolkit or to Xt and a proprietary widget set: DEC 
is offering Xlib courses; Sun offers an XView course.
	Various universities are offering short X courses or overviews: UCLA,
Dartmouth, University of Lowell, University of Canberra (within Australia: 
	UC Berkeley Extension will have a one week X/Motif class for 
programmers in San Francisco starting on July 29.  The class will have a 
hands-on lab. For more information contact UCBX at 415 323 8141.
	Among the best places to find courses are at the various Unix 
conferences -- Uniforum, Usenix, Unix Expo, Xhibition, the MIT X Technical
Conference, the ACM tutorial weeks, &c.
	In addition, the X Consortium posts approximately quarterly a list of
unendorsed speakers and consultants who can provide talks on a variety of X 
topics.
Subject:   3)! What conferences on X are coming up?
	The Xhibition 93 X trade show and conference, with tutorials, panels, 
presentations, and vendor exhibits, will be held at the San Jose Convention
Center June 7-11, 1993.  Information: +1 617 621 0060, xhibit@ics.com.
	The Tcl/Tk Workshop will be held at UCal Berkeley June 10-11, 1993.
Information: tcl93@cs.berkeley.edu.
	The 1993 Andrew Technical Conference and Consortium Annual Meeting will
be held June 24-25, 1993, in Pittsburgh. Information: 
Wilfred.Hansen@cs.cmu.EDU.
	The European X User Group holds an annual conference which typically 
includes includes paper presentations and a vendor exhibit. EXUG'93, "X in the
Real World and Multimedia" will be held 9/16-9/17 at the Imperial College of
Science and Technology, London. Information: exug@demon.co.uk, niall@uit.co.uk 
or p.whitehead@cc.ic.ac.uk, +44 (0) 223 426534, fax +44 (0) 223 420251.
	The Motif show is held in Washington to coincide with the FedUnix and 
the Federal Open Systems Conference (usually December). Information: 
motif@fedunix.org or paller@fedunix.org, 301-229-1062, fax 301-229-1063.
	The MIT X Technical Conference is typically held in January in Boston.
Registration information is available from registration@expo.lcs.mit.edu.
	The XWorld Conference and Exhibition includes tutorials, panels, 
presentations and vendor exhibits. It is typically held in March in New York 
City.  Information: SIGS Publication Group at 212-274-9135.
	Other trade shows -- UnixExpo, Uniforum, Siggraph -- show an increasing
presence of X, including tutorials and exhibits.
Subject:   4)  What X-related public mailing lists are available?
	The xpert mailing list is the general, public mailing list on X
maintained by the X Consortium. The mailings are gatewayed, so xpert is almost 
identical to the comp.windows.x Usenet newsgroup. 
	***	If you get comp.windows.x, you don't need to 	***
	***	be added to the xpert mailing list. 		***
	Otherwise, you can join the list to receive X information 
electronically. It is best to find a local distribution; perhaps someone within
your company is already receiving the mailing. As a last resort, send mail to 
xpert-request@expo.lcs.mit.edu with a valid return electronic address. 
	The xannounce mailing list carries major X announcements, such as new
releases (including public patches from MIT), public reviews, adoption of 
standards by the MIT X Consortium, and conference announcements.  It does NOT 
carry advertisements, source code, patches, or questions.  If you already 
receive the Usenet news group comp.windows.x.announce or the xpert mailing 
list, you don't need to be added to the xannounce mailing list.  Otherwise, to 
subscribe, send a request to xannounce-request@expo.lcs.mit.edu. Note: Only 
redistribution addresses will be accepted for this list -- i.e. no personal 
addresses. If you wish to receive xannounce yourself, please contact your mail 
administrator to set up a local redistribution list and to put you on it.  
	comp.windows.x.apps is not gatewayed to a mailing list.
	In addition, the X Consortium sponsors these public lists:
		bug-clx         CLX bug reports and discussions
		x-ada           X and ada
		x11-3d          people interested in X and 3d graphics
		ximage          people interested in image processing and X
		xvideo          discussion of video extensions for X
	To subscribe to one of these lists, assuming no-one in your 
organization already receives it, send mail to <list>-request@expo.lcs.mit.edu
with the Subject line including the name of the LIST in caps and the request
"addition request".  In the body of the message be sure to give an address for 
your local distribution which is accessible from MIT (eddie.mit.edu).
	A mailing list for topics related to OPEN LOOK is sponsored by Greg
Pasquariello of Unify corporation; send to openlook-request@unify.com (or
openlook-request%unify@uunet.uu.net) for information. 
	A mailing list for bugs in the publicly-available version of XView
source, in particular, is sponsored by Sun; send for information to 
xviewbug-trackers-request@sun.com. 
	A mailing list for topics related to Motif is sponsored by Kee Hinckley
of Alfalfa Software, Inc.; send to motif-request@alfalfa.com for information. 
(This group is gatewayed to comp.windows.x.motif.)
	A mailing list for topics related to the XPM pixmap-format is sponsored
by Arnaud Le Hors of Group Bull; send to xpm-talk-request@sa.inria.fr for
information. [1/91]
	A mailing list discussing InterViews can be subscribed to by sending to
interviews-request@interviews.stanford.edu.
	A mailing list (amiga-x11@nic.funet.fi) for topics related to the port 
of X11 to the Amiga can be subscribed by sending to mailserver@nic.funet.fi a 
message containing
		Subject: Adding myself to AMIGA-X11
		SUBS AMIGA-X11 Your Real Name
	A mailing list discussing ParcPlace's (formerly Solbourne's) OI (Object
Interface) toolkit can be subscribed to at oi-users-requests@bbn.com.
	A mailing list discussing multi-threaded Xlib can be subscribed to at
mt-xlib-request@xsoft.xerox.com.
Subject:   5)  How can I meet other X developers? 
	O'Reilly and Associates sponsors a mailing list for the use of X user 
group organizers; subscribe by sending to listserv@ora.com the message 
"subscribe xgroups your@internet.address".
	Local area X user's groups are listed in Issue 4 of O'Reilly's X 
Resource journal; a list may also be available from xug@ics.com.
	The French X User Group is called AFUX and is based in Sophia Antipolis
by CERICS. Information can be obtained from Miss Vasseur or Miss Forest; BP 
148; 157, rue Albert Einstein; 06561 Valbonne Cedex; Phone: +33 93 95 45 00 / 
45 01; Fax: +33 93 95 48 57.  [10/90]
	The European X User Group was formed in 1989 to represent X users in 
Europe.  It holds technical conferences at regular intervals. The EXUG also 
publishes a regular newsletter which is distributed free of charge to members. 
The EXUG also runs a email mailing list for members which is frequently used to
address issues of European interest in X. The EXUG can be contacted at
P.Whitehead@cc.ic.ac.uk, +44 (071) 225 8754, fax +44 (071) 823 9497.
	GXUGiV is the German X User's Group in Vorbereitung ("in preparation")
being formed for X programmers and users; it is associated with the EXUG. All
interested should contact Olaf Heimburger (+49 30 7 79 54 64; and at
mcvax!unido!tub!olaf).
Subject:   6)  What related FAQs are available?
	Liam R. E. Quin (lee@sq.sq.com) posts a FAQ on Open Look to 
comp.windows.open-look.  
	Jan Newmarch (jan@pandonia.canberra.edu.au) posts a FAQ on Motif to 
comp.windows.x.motif.
	Peter Ware (ware@cis.ohio-state.edu) posts a FAQ for
comp.windows.x.intrinsics; it is on export in contrib/FAQ-Xt.
	Art Mulder (art@cs.ualberta.ca) posts to comp.windows.x a FAQ on 
maximizing the performance of X.
	Steve Kotsopoulos (steve@ecf.toronto.edu) posts to comp.windows.x a FAQ
about using X on Intel-based Unix systems.
	The FAQ in alt.binaries.pictures contains information on viewing images
with X and on massaging image formats.
	The FAQ in comp.mail.mh (gatewayed to MH-users@ics.uci.edu) includes a 
section on xmh.
	The FAQ in comp.lang.lisp contains information on several interface
tools and toolkits.
	There exists a PEX/PHiGS FAQ.
Subject:   7)  How do I ask a net-question so as to maximize helpful responses?
	When asking for help on the net or X mailing lists, be sure to include 
all information about your setup and what you are doing.  The more specific you
are, the more likely someone will spot an error in what you are doing.  Without
all the details, people who want to help you often have to guess -- if they are
able to respond at all.
	Always mention what version of X you are using and where you got it 
from. If your server came from a different source as the rest of your X system,
give details of that, too.  Give the machine type, operating system, and O/S 
version for both the client and server machine.  It may also be appropriate to 
mention the window manager, compiler, and display hardware type you are using.
	Then tell exactly what you are doing, exactly what happens, and what
you expected/wanted to happen.  If it is a command that fails, include the 
exact transcript of your session in the message.  If a program you wrote 
doesn't work the way you expect, include as little of the source necessary 
(just a small test case, please!) for readers to reproduce the problem.
Subject:   8)  What publications discussing X are available?
	The trade magazines (Unix World, Unix Review, Computer Language, etc.)
are publishing more articles on X.  Two X-specific publications include:
	- O'Reilly and Associates publishes "The X Resource: A Practical 
Journal of the X Window System" (103 Morris St. #A, Sebastapol, CA 95472).  
Editorial information: Adrian Nye, adrian@ora.com.
	- The X Journal is started bi-monthly publication September 1991 on a 
variety of X topics. Subscription information: The X Journal, Subscriber 
Services, Dept XXX, P.O. Box 3000, Denville, NJ 07834, USA. Editorial 
information: editors%topgun@uunet.uu.net.
Subject:   9)  What are these common abbreviations/acronyms?
	Xt: The X Toolkit Intrinsics is a library layered on Xlib which 
provides the functionality from which the widget sets are built. An "Xt-based" 
program is an application which uses one of those widget sets and which uses 
Intrinsics mechanisms to manipulate the widgets.
	Xmu: The Xmu library is a collection of Miscellaneous Utility functions
useful in building various applications and widgets.
	Xaw: The Athena Widget Set is the MIT-implemented sample widget set
distributed with X11 source.
	Xm: The OSF/Motif widget set from the Open Software Foundation; binary
kits are available from many hardware vendors.
	Xhp (Xw): The Hewlett-Packard Widget Set was originally based on R2++, 
but several sets of patches exist which bring it up to R3, as it is distributed
on the X11R4 tapes. Supplemental patches are available to use it with R4/R5.
	CLX: The Common Lisp X Interface is a Common Lisp equivalent to Xlib.
	XDMCP: The X Display Manager Protocol provides a uniform mechanism for 
a display such as an X terminal to request login service from a remote host.
	XLFD: The X Logical Font Description Conventions describes a standard
logical font description and conventions to be used by clients so that they
can query and access those resources.
	RTFM: Common expert-speak meaning "please locate and consult the 
relevant documentation -- Read the Forgotten Manual".
	UTSL: A common expression meaning "take advantage of the fact that you 
aren't limited by a binary license -- Use The Source, Luke".
	API: Application-Programmer Interface. The function calls, etc., in
a programming library.
	BDF: Bitmap Distribution Format; a human-readable format for uncompiled
X fonts.
	GUI: graphical user interface.
	UIL: the User Interface Language, part of OSF/Motif which lets 
programmers specify a widget hierarchy in a simple "outline" form
	WCL: the Widget Creation Language, a package which extends the 
understanding of the Xt resource format such that a widget hierarchy and 
actions on the widgets can be specified through the resources file
	GIL: the file format put out by Sun's OpenWindows Developers Guide 3.0
	UIMS: User Interface Management System
Subject:  10)  What is the ICCCM? (How do I write X-friendly applications?)
	The Inter-Client Communication Conventions Manual is one of the 
official X Consortium standards documents that define the X environment. It 
describes the conventions that clients must observe to coexist peacefully with 
other clients sharing the same server.  If you are writing X clients, you need 
to read and understand the ICCCM,  in particular the sections discussing the 
selection mechanism and the interaction between your client and the window 
manager.  Get it either:
	- as part of the R4 distribution from MIT
	- in the later editions of the Scheifler/Gettys "X Window System" book
	- as an appendix in the new version of O'Reilly's Volume 0, "X Protocol
Reference Manual." A version in old copies of their Volume 1 is obsolete.
	The version in the Digital Press book is much more readable, thanks to 
the efforts of Digital Press's editors to improve the English and the 
presentation.
[from David Rosenthal, 10/90]
	- the ICCCM was updated for R5; updates are published in O'Reilly's
"Programmer's Supplement for Release 5". The complete document is on the R5
tapes.
	Alternate definition: the ICCCM is generally the M in "RTFM" and is
the most-important of the least-read X documents.
Subject:  11)  What is the X Consortium, and how do I join?
	The MIT X Consortium was formed in January of 1988 to further the
development of the X Window System and has as its major goal the promotion of 
cooperation within the computer industry in the creation of standard software 
interfaces at all layers in the X Window System environment.
	MIT's role is to provide the vendor-neutral architectural and 
administrative leadership required to make this work. Membership in the 
Consortium open to any organization.  There are two categories of membership, 
Member (for large organizations) and Affiliate (for smaller organizations).
	Most of the Consortium's activities take place via electronic mail, 
with meetings when required.  As designs and specifications take shape,
interest groups are formed from experts in the participating organizations.  
Typically a small multi-organization architecture team leads the design, with 
others acting as close observers and reviewers.  Once a complete specification
is produced, it may be submitted for formal technical review by the Consortium
as a proposed standard.  The standards process typically includes public 
review (outside the Consortium) and a demonstration of proof of concept.
	Your involvement in the public review process or as a Member or 
Affiliate of the Consortium is welcomed.
	Write to: Bob Scheifler, MIT X Consortium, Laboratory for Computer 
Science, 545 Technology Square, Cambridge, MA 02139.
[For complete information see the XCONSORTIUM man page from the X11R4
distribution, from which this information is adapted.] [2/90]
Subject:  12)  Just what are OPEN LOOK and Motif?
	OPEN LOOK and Motif are two graphical user interfaces (GUIs). OPEN LOOK
was developed by Sun with help from AT&T and many industry reviewers; Motif was
developed by the Open Software Foundation (OSF) with input from many OSF 
members. 
	OPEN LOOK is primarily a user-interface specification and style-guide; 
there are several toolkits which can be used to produce OPEN LOOK applications.
Motif includes an API specification; the only sanctioned Motif toolkit is the 
one from OSF. However, there are other toolkits which can be used to produce 
programs which look and behave like OSF/Motif; one of these, ParcPlace's 
(formerly Solbourne's) OI, is a "virtual toolkit" which provides objects in the
style of OPEN LOOK and Motif, at the user's choice.
	OPEN LOOK GUI is also the name of a product from AT&T, comprising 
their OPEN LOOK Intrinsics Toolkit and a variety of applications.
[Thanks to Ian Darwin, ian@sq.com, 5/91]
Subject:  13)  Just what is OpenWindows?
	Open Windows (3.0) is a Sun product that encompasses: a window system 
that combines a NeWS and X11-compliant server (X/NeWS); a user-interface 
specification (OPEN LOOK) and a series of toolkits that implement it (including
the SunView-like XView and the Xt-based OLIT); Xlib and Xt implementations; and
a number of utilities (olwm window manager, filemgr, shelltool, etc.).
[thanks to Frank Greco (fgreco@govt.shearson.COM), 8/90; 4/92] 
Subject:  14)  Just what is DECWindows?
	DECWindows is a DEC product that encompasses: an X11 server; the XUI 
toolkit, including the Dwt widget set and UIL; Xlib and Xt implementations; a 
session manager; and a number of utilities (dxwm window manager, dxcalendar, 
dxpsview, etc.).
(At some point Motif flavors of the toolkit and applications will be shipped.)
Subject:  15)  What is PEX?
	PEX is the "PHiGS Extension to X".
	PHiGS stands for "Programmer's Hierarchical Interactive Graphics 
System" and is essentially a library of functions that simplifies the creation 
and manipulation of 3D graphics. Many platforms are capable of performing in 
hardware the computations involved in rendering 3D objects; the extension 
allows the client (PHiGS in this case) to take advantage of the specialized 
hardware for 3D graphics.
	Sun Microsystems is currently contracted to develop a freely 
redistributable (copyright similar to the current X copyright) sample
implementation.  Source and documentation are available in the R5 release.
Several vendors are currently selling independently-developed PEX servers for 
their workstations and X terminals.
[last modified 10/91]
Subject:  16)  What is "low-bandwidth X" (LBX)? XRemote? PPP? SLIP? CSLIP?
There are several options for using X over serial lines:
SLIP - Serial Line IP; this is both a mechanism and a protocol for sending IP
packets over point-to-point serial links. It has been around for several years,
and implementations are available for many of the major TCP/IP implementations.
Most X Terminal vendors supply this as a checkoff item, although nobody really 
ever uses it since it is horribly slow.  The TCP/IP headers add 40 bytes per 
packet and the TCP/IP encoding of the X protocol is rather verbose (rightfully 
so; it is optimized for packing and unpacking over high-speed links). 
CSLIP - Compressed header SLIP; this is a variant of SLIP that compresses the 
40 bytes of TCP/IP headers down to about 5 or 6 bytes.  It still doesn't do 
anything about reencoding the X protocol.  Modems that do compression can help,
but they increase packet latency (it takes time to dribble the uncompressed 
data through typical serial interfaces, plus the compression assembly time).
PPP - Point-to-Point Protocol; this is an emerging standard for point-to-point
links over serial lines that has a more complete set of option negotiation than
SLIP.  A growing number of people see the combination of PPP for the serial 
line management and CSLIP for the header compression as becoming common for 
running normal TCP/IP protocols over serial lines.  Running raw X over the wire
still needs compression somewhere to make it usable.
XRemote - this is the name of both a protocol and set of products originally
developed by NCD for squeezing the X protocol over serial lines.  In addition 
to using a low level transport mechanism similar to PPP/CSLIP, XRemote removes 
redundancies in the X protocol by sending deltas against previous packets and 
using LZW to compress the entire data stream.  This work is done by either a 
pseudo-X server or "proxy" running on the host or in a terminal server.  There 
are several advantages to doing compression outside the modem:
   (1)	You don't *have* to have compressing modems in there if you wouldn't 
	otherwise be using them (e.g. if you were going to be directly 
	connected), and
   (2)	It reduces the I/O overhead by cutting down on the number of bytes that
	have to cross the serial interface, and
   (3)	In addition to the effects of #2, it reduces the latency in delivering 
	packets by not requiring the modem to buffer up the data waiting for 
	blocks to compress.
LBX - Low Bandwidth X; this is an X Consortium project that is working on a
standard for this area.  It is being chaired by NCD and Xerox and is using 
NCD's XRemote protocol as a stepping stone in developing the new protocol.  LBX
will go beyond XRemote by adding proxy caching of commonly-used information 
(e.g. connection setup data, large window properties, font metrics, keymaps, 
etc.) and a more efficient encoding of the X protocol. The hope is to have a 
Standard ready for public review in the first half of next year and a sample 
implementation available in R6.
Additional technical information about how XRemote works and a few notes on how
LBX might be different are available via anonymous ftp from export.lcs.mit.edu
in contrib/ in the following files:
        XRemote-slides.ps               slides describing XRemote
        XRemote-LBX-diffs.ps            more slides describing some of LBX
[information provided by Jim Fulton, jim@ncd.com; 7/92]
	There is also a set of slides on export from Jim Fulton's talk at
the 7th MIT X Technical Conference.
Subject:  17)  TOPIC: USING X IN DAY-TO-DAY LIFE
Subject:  18)! What are all these different window managers?
	The window manager in X is just another client -- it is not part of the
X window system, although it enjoys special privileges -- and so there is
no single window manager; instead, there are many which support different ways 
for the user to interact with windows and different styles of window layout,
decoration, and keyboard and colormap focus. In approximate chronological order
(generally, the more recent ones are more conformant with the ICCCM):
	wm: this simple title-bar window manager was phased out in R2 or R3
	uwm: the Universal Window Manager is still popular for its speed, 
although it is very outdated. Moved to contrib/ on the R4 tape.
	twm (old): Tom's Window Manager was among the first non-MIT window 
managers and offered the user a great deal of customization options in a
re-parenting window manager. 
	awm: the Ardent Window Manager remains a hotbed for hackers and offers
some features (dynamic menus) not found on more current window managers
	cwm: cwm is part of the Andrew system. 
	rtl: Siemen's window manager tiles windows so that they don't overlap
and resizes the window with the focus to its preferred size.
	dxwm: Digital's dxwm is part of the DECwindows offering
	hpwm: HP's window manager offers a 3D look; it is a precursor of mwm
	mwm: the Motif window manager is part of the OSF/Motif toolkit
	tekwm: Tektronix's window manager offering 
	olwm (Sun): olwm implements the OPEN LOOK GUI and some of the Style
Guide functionality
	olwm (AT&T): ditto
	gwm: Bull's Generic Window Manager emulates others with a built-in
Lisp interpreter. Version 1.7h (10/91) is on the R5 contrib tape; 1.7n is on
avahi.inria.fr and export.lcs.mit.edu. [3/93]
	m_swm: the Sigma window manager is on the R4 tape
	pswm: Sun's PostScript-based pswm is part of the OpenWindows release
	swm: Solbourne's swm is based on the OI toolkit and offers multiple
GUI support and also a panned virtual window; configuration information comes
from the resources file
	twm (new): MIT's new Tab Window Manager from the R4 tape is a reworked
twm and is the basis for several derivatives, including the one on the R5 tape
	vtwm: vtwm offers some of the virtual-desktop features of swm, with a
single-root window implementation; it is based on the R4 twm and is available
on archive servers. A new version, vtwm-5.0, is based on R5.9 and is available 
from export. [3/92]
	tvtwm: Tom's Virtual Tab Window Manager is also based on the R4 twm
and provides a virtual desktop modeled on the virtual-root window of swm. It is
available on archive servers
	olvwm: the vtwm-style virtual-desktop added to Sun's olwm. It is 
available on archive servers; version 3.3 [1/93] is on export.
	mvwm: the vtwm-style virtual-desktop added to OSF's mwm. A beta version
is floating around (most recently from suresh@unipalm.co.uk) but requires a 
source license to OSF/Motif 1.1.3 [3/92].
	NCDwm: the window manager local to NCD terminals offers an mwm look 
	XDSwm: the window manager local to Visual Technology's terminals 
	ctwm: Claude Lecommandeur's (lecom@sic.epfl.ch) modification of the R5 
twm offers 32 virtual screens in the fashion of HP vuewm; source is on export.
Version 2.2.2 [2/93] also offers the window overview used in vtwm and tvtwm.
	vuewm: HP's MWM-based window manager offers configurable workspaces.
	4Dwm: SGI's enhanced MWM
	piewm: this version of tvtwm offers pie menus
Subject:  19)  Why does my X session exit when I kill my window manager (sic)?
	It needn't.  What is probably happening is that you are running your 
window manager as the last job in your .xsession or .xinitrc file; your X 
session runs only as long as the last job is running, and so killing your 
window manager is equivalent to logging out. Instead, run the window manager in
the background, and as the last job instead invoke something safe like:
		exec xterm -name Login -rv -iconic
or any special client of your devising which exits on some user action.
Your X session will continue until you explicitly logout of this window, 
whether or not you kill or restart your window manager.
Subject:  20)  Can I save the state of my X session, like toolplaces does?
	Although no known window manager directly supports such a feature --
which may be equivalent to writing out a .xinitrc or .xsession file naming the
geometry and WM_COMMAND of each application (but olvwm may have something 
close) -- there is a contributed application which does much of what you are 
looking for, although it is not as complete as the SunView program toolplaces. 
Look for the application "xplaces" on an archive-server near you. There are 
several versions of this program floating around; look for a recent vintage.
	Some new pseudo session-managers such as HP's vuewm provide for the 
saving of sessions including information on the geometry of currently-running
applications and the resource database. 
[Bjxrn Stabell (bjoerns@staff.cs.uit.no); 3/93.]
Subject:  21)  How do I use another window manager with DEC's session manager?
	DEC's session manager will start dxwm up by default. To override this, 
add to your .Xdefaults file something like this line, naming the full pathname:
	sm.windowManagerName:   /wherever/usr/bin/X11/your_favorite_wm
Subject:  22)  How do I change the keyboard auto-repeat rate?
	You can turn auto-repeat on or off by using "xset r on|off". The X
protocol, however, doesn't provide for varying the auto-repeat rate, which is
a capability not supported by all systems.
	Some servers running on systems that support this, however, may provide
command-line flags to set the rate at start-up time. If you have control over 
server start-up (see the man pages for xinit and xdm), you can invoke the 
server with the chosen settings; for example, you can start the Xsun server 
from MIT with the options "-ar1 350 -ar2 30" to reduce the sensitivity of the 
keyboard.
Subject:  23)  How do I remap the keys on my keyboard to produce a string?
	There is no method of arranging for a particular string to be
produced when you press a particular key. The xmodmap client, which is useful 
for moving your CTRL and ESC keys to useful places, just rearranges keys and 
does not do "macro expansion."
	Some (few) clients, including xterm and several X-based editors, 
accept a translation resource such as:
	xterm*VT100.Translations: #override \
		<Key>F1: string("setenv DISPLAY unix:0")
which permits the shorthand F1 to be pressed to reset the display locally
within an xterm; it takes effect for new xterm clients. To include control
characters in the string, use \nnn, where nnn is the octal encoding of the
control character you want to include.
	Window managers, which could provide this facility, do not yet; nor
has a special "remapper" client been made available.
David B. Lewis 					faq%craft@uunet.uu.net
		"Just the FAQs, ma'am." -- Joe Friday 
David B. Lewis		Temporarily at but not speaking for Visual, Inc.
day: dbl@visual.com	evening: david%craft@uunet.uu.net
