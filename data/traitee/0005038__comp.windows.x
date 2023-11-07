Archive-name: x-faq/part3
Last-modified: 1993/04/04
Subject:  58)! Where can I get patches to X11R5?
	The release of new public patches by the MIT X Consortium is announced
in the comp.windows.x.announce newsgroup.
	Patches themselves are available via ftp from export and from other
sites from which X11 is available. They are now also distributed through the 
newsgroup comp.sources.x. Some source re-sellers may be including patches in 
their source distributions of X11.
	People without ftp access can use the xstuff mail server. It now has 
23 patches for X11R5 [3/93].  Send to xstuff@expo.lcs.mit.edu the Subject line
		send fixes #
where # is the name of the patch and is usually just the number of the patch.
	Here are a few complications:
	1) fix 5 is in four parts; you need to request "5a", "5b", "5c" and 
"5d" separately
	2) the file sunGX.uu, which was part of an earlier patch, was 
re-released with patch 7 [note: the file doesn't work with Solaris]
	3) fix 8 is in two parts: "8a" and "8b"
	4) fix 13 is in three parts: "13a", "13b", and "13c"
	5) fix 16 is in two parts: "16a" and "16b"
	6) fix 18 replaces the R5fix-test1 for the X Test Suite, which 
previously was optional
	7) fix 19 also needs PEXlib.tar.Z, which you can obtain from xstuff
by asking for "PEXlib.uu.[1234]".
	8) fix 22 is in 9 parts, "22a" through "22i"
Subject:  59)  What is the xstuff mail-archive?
	The xstuff server is a mail-response program. That means that you mail 
it a request, and it mails back the response.
	Any of the four possible commands must be the first word on a line. The
xstuff server reads your entire message before it does anything, so you can 
have several different commands in a single message (unless you ask for help). 
The xstuff server treats the "Subject:" header line just like any other line 
of the message.
	The archives are organized into a series of directories and 
subdirectories.  Each directory has an index, and each subdirectory has an 
index. The top-level index gives you an overview of what is in the 
subdirectories, and the index for each subdirectory tells you what is in it.
	1) The command "help" or "send help" causes the server to send you a 
more detailed version of this help file.
	2) if your message contains a line whose first word is "index", then 
the server will send you the top-level index of the contents of the archive. If
there are other words on that line that match the name of subdirectories, then 
the indexes for those subdirectories are sent instead of the top-level index. 
For example, you can say "send index fixes" (or "index fixes"). A message that 
requests an index cannot request data.
	3) if your message contains a line whose first word is "send", then the
xstuff server will send you the item(s) named on the rest of the line. To name 
an item, you give its directory and its name. For example
                send fixes 1 4 8a 8b 9
	You may issue multiple send requests. The xstuff server contains many 
safeguards to ensure that it is not monopolized by people asking for large 
amounts of data. The mailer is set up so that it will send no more than a fixed
amount of data each day. If the work queue contains more requests than the 
day's quota, then the unsent files will not be processed until the next day. 
Whenever the mailer is run to send its day's quota, it sends the requests out 
shortest-first.
	4) Some mailers produce mail headers that are unusable for extracting 
return addresses.  If you use such a mailer, you won't get any response.  If 
you happen to know an explicit path, you can include a line like
        path foo%bar.bitnet@mitvma.mit.edu
or
        path bar!foo!frotz
in the body of your message, and the daemon will use it.
	The xstuff server itself can be reached at xstuff@expo.lcs.mit.edu. If 
your mailer deals in "!" notation, try sending to 
{someplace}!mit-eddie!expo.lcs.mit.edu!xstuff.
[based on information from the MIT X Consortium, 8/89, 4/90.]
Subject:  60)! Where can I get X11R4 (source and binaries)?
	Integrated Computer Solutions, Inc., ships X11R4 on half-inch, 
quarter-inch, and TK50 formats. Call 617-621-0060 for ordering information.
	The Free Software Foundation (617-876-3296) sells X11R4 on half-inch 
tapes and on QIC-24 cartridges.  
	Yaser Doleh (doleh@math-cs.kent.EDU; P.O. Box 1301, Kent, OH 44240) is
making X11R4 available on HP format tapes, 16 track, and Sun cartridges. [2/90]
	European sites can obtain a free X11R4 distribution from Jamie Watson,
who may be reached at chx400!pan!jw or jw@pan.uu.ch. [10/90]
	Non Standard Logics (+33 (1) 43 36 77 50; requests@nsl.fr) makes source
available.
	IXI Limited (+44 223 462 131) is selling X11R4 source on quarter-inch 
cartridge formats and on 5.25" and 3.5" floppy, with other formats available on
request. [IXI, 2/90]
	Virtual Technologies (703-430-9247) provides the entire X11R4 
compressed source release on a single QIC-24 quarter-inch cartridge and also on
1.2meg or 1.44 meg floppies upon request. [Conor Cahill 
(cpcahil@virtech.uu.net) 2/90]
	Young Minds (714-335-1350) makes the R4 and GNU distributions available
on a full-text-indexed CD-ROM.
[Note that some distributions are media-only and do not include docs.]
	X11R4 is ftp-able from export.lcs.mit.edu; these sites are preferable, 
though, and are more direct:
                        Machine                  Internet      FTP
    Location            Name                     Address       Directory
(1) West USA            gatekeeper.dec.com       16.1.0.2      pub/X11/R4
    Central USA         mordred.cs.purdue.edu    128.10.2.2    pub/X11/R4
(2) Central USA         giza.cis.ohio-state.edu  128.146.8.61  pub/X.V11R4
    Southeast USA       uunet.uu.net             192.48.96.2   X/R4
(3) Northeast USA       crl.dec.com              192.58.206.2  pub/X11/R4
(4) UK Janet            src.doc.ic.ac.uk         129.31.81.36  X.V11R4
    UK niftp            uk.ac.ic.doc.src                       <XV11R4>
(5) Australia           munnari.oz.au            128.250.1.21  X.V11/R4
The giza.cis.ohio-state.edu site, in particular, is known to have much of the
contrib stuff that can be found on export. 
The release is available to DEC Easynet sites as CRL::"/pub/X11/R4".
Sites in Australia may contact this address: ftp.Adelaide.EDU.AU [129.127.40.3]
and check the directory pub/X/R4. The machine shadows export and archives
comp.sources.x. (Mark Prior, mrp@ucs.adelaide.edu.au, 5/90)
Note: a much more complete list is distributed as part of the introductory 
postings to comp.sources.x.
A set of X11R4 binaries built by Tom Roell (roell@informatik.tu-muenchen.de) 
for the 386/ix will available from export.lcs.mit.edu in /contrib and in 
/pub/i386/X11R4 from 131.159.8.35 in Europe. Stephen Hite 
(shite@sinkhole.unf.edu) can also distribute to folks without ftp facilities 
via disks sent SASE; contact him for USmail and shipping details. [12/90] In 
addition, the binaries are available via uucp from szebra [1-408-739-1520, TB+ 
(PEP); ogin:nuucp sword:nuucp] in /usr2/xbbs/bbs/x.  In addition, the source is
on zok in /usrX/i386.R4server/. [2/91] In addition, if you are in the US, the 
latest SVR4 binary (April 15), patches, and fonts are available on 
piggy.ucsb.edu (128.111.72.50) in the directory /pub/X386, same filenames as 
above. (Please use after 6pm Pacific, as these are large files.) [5/91]
A set of HP 9000/800 binaries is available on hpcvaaz.cv.hp.com (15.255.72.15)
as ~ftp/pub/MitX11R4/libs.x800.Z. [2/91]
A set of X11R4 binaries for the NeXT 2.x have been made available by Howie Kaye
on cunixf.cc.columbia.edu
A set of binaries by John Coolidge (coolidge@cs.uiuc.edu) for the Mac running 
A/UX 2.0 is available from wuarchive.wustl.edu in the file
(/archive/systems/aux/X11R4/Xupdate2.tar.Z). Also in X11R4/diffs is a set of 
patches for making X11R4 with shared libraries with mkshlib.
A complete distribution of SCO X11R4 binaries by Baruch Cochavy 
(blue@techunix.technion.ac.il) can be found on uunet. The server is Roell's 
X386 1.1b, compiled for ET4000 based SVGA boards.
Subject:  61)  Where can I get OSF/Motif?
	You can obtain either OSF/Motif source or binaries from a number of 
vendors. 
	Motif 1.2.2 source is now available; it is based on X11R5.
	Motif 1.1 is based on the R4.18 Intrinsics and is currently [7/92] at 
	An OSF/Motif source license must be obtained from OSF before source can
be obtained from the Open Software Foundation or any value-added vendor for
any version. Call the Direct Channels Desk at OSF at 617-621-7300 for ordering 
information.
	Various hardware vendors produce developer's toolkits of binaries, 
header files, and documentation; check your hardware vendor, particularly if
that vendor is an OSF member. 
	In addition, independent binary vendors produce Motif toolkits for
machines for which Motif is not supported by a vendor; the kits include varied 
levels of bug-fixing and support for shared libraries and are based on widely
divergent version of Motif:
	Quest (408-988-8880) sells kits for Suns, as well; 
	IXI (+44 223 462 131) offers kits for Sun3 and Sun4. 
	NSL (+33 (1) 43 36 77 50; requests@nsl.fr) offers kits for the Sun 3 
and Sun 4.
	Bluestone Consulting makes a kit for Sun systems.
	ICS (617-62-0060) makes several binary kits, notably for Sun, DEC.
	HP and DEC have announced support for Motif on Sun systems.
	Unipalm (+44-954-211-797) currently offers for Sun systems a Motif 
Development Kit including X11R4 and based on Motif 1.1.2. The US distributor is
Expert Object Corp (708-926-8500).
	BIM ships Motif 1.1 binaries for Suns. Shared library support is 
included. Contact Alain Vermeiren (av@sunbim.be) or Danny Backx (db@sunbim.be) 
at +32(2)759.59.25 (Fax : +32(2)759.47.95) (Belgium).
	SILOGIC (+33 61.57.95.95) ships Motif 1.2 and Motif 1.1 on Sun 
machines.
	S.I. Systems offers Motif 1.2 for Solaris 2.1; info: 1-800-755-8649 in
USA and Canada.
	Metro Link Inc. (305-970-7353, sales@metrolink.com; in Europe contact
ADNT, (33 1) 3956 5333, UniVision (UK) Ltd. (44) 628 82 22 81) ships an 
implementation of X11R4 and Motif 1.1.2 (including a shared-library 
implementation of libXm.a) for the 386/486 Unix market.  Motif 1.1.2 is 
also available for Sun Sparc based workstations. It has also announced 
Motif 1.2 for Solaris systems.
Subject:  62)  Does Motif work with X11R4? X11R5?
	Motif 1.2 is based on X11R5.
	Motif 1.1, available in source form from OSF as of August 1990, uses 
the "vanilla" X11R4 Intrinsics, where "vanilla" means "with just a few 
patches"; the file fix-osf which OSF distributes is obsoleted by MIT's patches 
15-17.  The file fix-osf-1.1.1 distributed with the 1.1.1 version or its 
subsequent modification needs to be applied after MIT fix-18, though.
	Motif 1.1.1 to 1.1.3 will work with X11R5 if X11R5 is compiled with
-DMOTIFBC; 1.1.4 and later should work with the vanilla R5, although there are 
some known new geometry-management problems.
Subject:  63)  Where can I get toolkits implementing OPEN LOOK?
	Sun's XView has a SunView-style API. A version is on the X11R4 tape;
the latest [2/92] 3.0 sources are on export in contrib/xview3/.
	XView and X binaries for the Sun 386i ("roadrunner") are available for 
ftp from svin01.win.tue.nl (131.155.70.70), directory pub/X11R4_386i.
	Supported binaries of XView 2.0 or 3.0 include: 
XView for non-Sun Platforms  (domestic and selected international vendors).
Several are also available from Sun; contact your local sales office.
Amiga		GfxBase, Inc.		1881 Ellwell Drive
(AmigaDOS)	(408) 262-1469		Milpitas, CA 95035
		Fax: (408) 262-8276
Sony (NEWS-OS)
DECstation	UniPress Software	2025 Lincoln Highway
(Ultrix)	(908) 985-8000		Edison, NJ 08817
		Fax: (908) 287-4929
		UniPress Software, Ltd.		PO Box 70
		44-624-661-8850			Viking House
		Fax: 44-624-663-453		Nelson Street
						Douglas, Isle of Man
						United Kingdom
DEC VAXstation	TGV			603 Mission Street
(VMS)		(800) TGV-3440		Santa Cruz, CA 95060
		Fax: (408) 427-4365
		Unipalm Ltd.			145-147 St. Neots Road
		44-0954-211797			Hardwick
		Fax: 44-0954-211244		Cambridge CB3 7QJ
						England
Intel 386	Quarterdeck Office	150 Pico Boulevard
(DOS)		Systems			Santa Monica, CA 90405
		Fax: (213) 399-3802
Intel 386	SunSoft Corporation	6601 Center Drive West
(Interactive	310-348-8649		Suite 700
 UNIX and				Los Angeles, CA  90045
Stardent	Scripps Institute	Clinic MB-5
(Stellix OS	Fax: (619) 554-4485	10666 N. Torrey Pines Road
 and Titan OS)	Include mailstop MB-5	La Jolla, CA 92057
		By ftp: 192.42.82.8 in pub/binary/{Xview.README,XView.tar.Z}
	AT&T's OPEN LOOK GUI 3.0 Xt-based toolkit is now generally available 
[2/92]; contact 1-800-828-UNIX#544 for information. Binaries are produced
for SPARC systems by International Quest Corporation (408-988-8289). A version
of the toolkit is also produced under the name OLIT by Sun. 
	More recent versions of OLIT have been ported to IBM 6000 and DEC MIPS 
by both UniPress and ICS. OLIT is also available for HP from Melillo Consulting
(908-873-0075). MJM (Somerset, NJ) makes OLIT 4.0 for HP 7xx series running
HPUX 8.0, DECstations, and RS/6000s [thanks to Joanne Newbauer, 
jo@attunix.att.com, 908-522-6677.]
	Sun is shipping OpenWindows 3.0; contact your local sales 
representative for more details; the package includes toolkit binaries and 
header files.
	ParcPlace's (formerly Solbourne's) extensible C++-based Object 
Interface Library, which supports run-time selection between Open Look or 
Motif, is available from 303-678-4626. [5/92]
Subject:  64)! Where can I get other X sources? (including R5 modifications)
	The MIT Software Center ships the X Test Suite on tape.
	A multi-threaded version of Xlib based on X11R5 patch 12 is now 
available for anonymous FTP from (new version 1/93):
        DEC on gatekeeper.dec.com (16.1.0.2) in /pub/X11/contrib/mt-xlib-1.1
        MIT on export.lcs.mit.edu (18.24.0.12) in /contrib/mt-xlib-1.1
	HP has made available drivers to permit the building of the X11R5
sample server on the HP 9000 Series 700 workstations; the files are on
export.lcs.mit.edu in ~ftp/contrib/R5.HP.SRV. [8/92]
	User-contributed software is distributed through the newsgroup
comp.sources.x, moderated by Chris Olson (chris@imd.sterling.com); also check 
that group for posting information.
	Richard Hesketh (rlh2@ukc.ac.uk) has been creating a list of freely-
available X sources.  The list is stored on export.lcs.mit.edu in contrib as
x-source-list.Z. It lists the main storage locations for the program and 
international sites from which it may be ftp'ed.
	The machine export.lcs.mit.edu has a great deal of user-contributed
software in the contrib/ directory; a good deal of it is present in current or 
earlier versions on the X11R3, X11R4, and X11R5 contrib tapes. There are also
directories for fixes to contrib software.  The file on export in
contrib/00-index.txt is a quick overall index of the software in that area,
provided by Daniel Lewart (d-lewart@uiuc.edu).
	These sites used to and may still mirror export and are of particular 
use for Australasia: Anonymous ftp: ftp.Adelaide.EDU.AU; ACSnet Fetchfile: 
sirius.ua.oz.
	The material on giza.cis.ohio-state.edu, which tends to duplicate 
the export archives, is also available via anonymous UUCP from osu-cis, at TB+ 
and V.32 speeds.  Write to uucp@cis.ohio-state.edu (same as osu-cis!uucp) for 
instructions. [the archive is now maintained by Karl Kleinpaste]
	A new west-coast UUCP X11 Archive is administered by Mark Snitily 
(mark@zok.uucp) and contains the full X11 distribution, the XTEST
distribution, an entire archive of comp.sources.x and other goodies.
	The machine zok has a TB+ modem which will connect to 19.2K, 2400, 
1200 baud (in that order).  The anonymous UUCP account is UXarch with password 
Xgoodies.  The modem's phone number is 408-996-8285.
	A sample Systems (or L.sys) entry might be:
   		zok Any ACU 19200 4089968285 in:--in: UXarch word: Xgoodies
	To get a current listing of the files that are available, download
the file "/usrX/ls-lR.Z".
	A full subject index of the comp.sources.x files is available in the
file "/usrX/comp.sources.x/INDEX".
	The machine has just the one modem, so please do not fetch large 
amounts of data at one sitting.
[courtesy Mark Snitily, 2/90]
In addition, UUNET Source Archives (703-876-5050) tracks comp.sources.x and 
provides 800MB+ of compressed programs on 6250 bpi tapes or 1/4" tapes.  It 
also mirrors export/contrib in its packages/X directory.
Subject:  65)! Where can I get interesting widgets?
	The Free Widget Foundation (FWF) library sponsored by Brian Totty 
(totty@cs.uiuc.edu) is now [2/93] available on a.cs.uiuc.edu (128.174.252.1) 
in pub/fwf-v3.41.shar.Z. The set of widgets there is intended to form the basis
for future contributions. To be added to the discussion list, send to
listserv@cs.uiuc.edu a message saying "subscribe <listname> <your-full-name>"
where <listname> is one of free-widgets-announce, free-widgets-development, or 
free-widgets-bugs.  Version 3.4 is current; look for 4.0 in 4/93.
	The Xew widget set contains widgets for data representation.  Version 
1.2 [4/93] is on export contrib/Xew-1.2.tar.Z.
	Peter Ware's Xo "Open Widget" set, which has Motif-like functionality, 
is on archive.cis.ohio-state.edu as pub/Xo/Xo-2.1.tar.Z [8/92].
	The AthenaTools Plotter Widget Set Version 6-beta [7/92] maintained by
Peter Klingebiel (klin@iat.uni-paderborn.de) includes many graph and plotting 
widgets; a copy is on export in plotter.v6b.tar.Z, plotter.doc.tar.Z,
plotter.afm.tar.Z, and plotter.README. The latest versions may in fact be on
ftp@uni-paderborn.de (131.234.2.32) in /unix/tools.
	An advance version of Marc Quinton's Motif port of the FWF MultiList 
widget is in ftp.stna7.stna.dgac.fr:pub/MultiList.tar.Z [143.196.9.31].
	Additional widgets are available on the contrib/ portion of the X11R4
tapes; these include the Xcu set.
	Paul Johnston's (johnston@spc5.jpl.nasa.gov) X Control Panel widget set
emulates hardware counterparts; sources are on export.lcs.mit.edu in 
Xc-1.3.tar.Z.
	O'Reilly Volume 4, Doug Young's book, the Asente/Swick book, and Jerry 
Smith's "Object-oriented Programming with the X Window System Toolkits" all 
include details on writing widgets and include several useful widgets; sources 
are typically on export and/or UUNET. 
	The Dirt interface builder includes the libXukc widet set which extends
the functionality of Xaw. 
	A graph widget and other 2D-plot and 3D-contour widgets by Sundar 
Narasimhan (sundar@ai.mit.edu) are available from ftp.ai.mit.edu as
/com/ftp/pub/users/sundar/graph.tar.Z. The graph widget has been updated [3/91]
with documentation and histogram capabilities.
	A graph widget is available from ftp.stna7.stna.dgac.fr in
pub/Graph.tar.Z; it uses a segment list for drawing and hence supports a zoom
operation.
	Ken Lee's Xm widget (demo) that uses Display PostScript to draw labels 
at a non-horizontal angle is on export in contrib/dpslabel.tar.Z.
	The Table widget (works like troff TBL tables) is available in several
flavors, one of which is with the Widget Creation Library release.
	Bell Communications Research has developed a Matrix widget for complex
application layouts; it's on export in contrib/Xbae-widgets-3.8.tar.Z [2/93. 
The distribution also includes a "caption" widget to associate labels with 
particular GUI components. (7/92)
	Dan Connolly's (connolly@convex.COM) XcRichText interprets RTF data;
it's on export as contrib/XcRichText-1.1.tar.Z.
	The XmGraph Motif-based graphing widget is on iworks.ecn.uiowa.edu in
/comp.hp/GUI_classic/XmGraph.tar.Z although it may not be stable.
	A TeX-style Layout widget by Keith Packard is described in the 
proceedings of the 7th MIT Technical Conference (O'Reilly X Resource volume 5);
source is available on export contrib/Layout.tar.Z.
	A version of Lee Iverson's (leei@McRCIM.McGill.EDU) image-viewing tool
is available as contrib/vimage-0.9.3.tar.Z on export.lcs.mit.edu.  The package 
also includes an ImageViewPort widget and a FileDialog widget. [12/91;5/92] 
	In addition, the PEXt toolkit by Rich Thomson (rthomson@dsd.es.com) is 
available on export as PEXt.tar.Z; it includes a PEX widget making it easier to
use PEX in Xt-based programs.
	A Motif port of the Xaw clock widget is in ftp.stna7.stna.dgac.fr
in pub/Clock.tar.Z.
	A modification of the Xaw ScrollBar widget which supports the arrowhead
style of other toolkits is on export in contrib/Xaw.Scrollbar.mta.Z.
	A beta 0.3 (11/92) release of the R5 Xaw widgets with a 3D visual 
appearance by Kaleb Keithley (kaleb@thyme.jpl.nasa.gov) is available on export 
in contrib/Xaw3d/R5/Xaw3d-0.3.tar.Z. The library, which is binary-compatible 
with the MIT Xaw, implements a 3D subclass which handles the extra drawing.
Also:
	The Xmt "Motif Tools", Dovetail Systems's shareware library of 9 
widgets and many convenience functions, is available from 
export.lcs.mit.edu:contrib and ftp.ora.com:/pub/xbook/Xmt in xmt-README and 
xmt-1.0.tar.Z.
	The Xtra XWidgets set includes widgets for pie and bar charts, XY 
plots, Help, spreadsheets, data entry forms, and line and bar graphs.  Contact 
Graphical Software Technology at 310-328-9338 (info@gst.com) for information.
	The XRT/graph widget, available for Motif, XView and OLIT, displays
X-Y plots, bar and pie charts, and supports user-feedback, fast updates and
PostScript output. Contact KL Group Inc. at 416-594-1026 (info@klg.com).
	A set of data-entry widgets for Motif is available from Marlan 
Software, 713-467-1458 (gwg@world.std.com).
	A set of graph widgets is available from Expert Database Systems
	A set of OSF/Motif compound widgets and support routines for 2D
visualization is available from Ms Quek Lee Hian, National Computer Board,
Republic of Singapore; Tel : (65)7720435; Fax : (65)7795966; 
leehian@iti.gov.sg, leehian@itivax.bitnet.
	The ICS Widget Databook includes a variety of control widgets and 
special-purpose widgets, available on a variety of platforms.  Information: 
617-621-0060, info@ics.com.
	Information on graphing tools may be obtained from info@TomSawyer.com 
(+1-510-848-0853, fax: +1-510-848-0854).
Subject:  66)  Where can I get a good file-selector widget?
	The Free Widget Foundation set offers a FileSelector widget, with 
separate directory path and file listing windows, and the FileComplete, which
has emacs-style file completion and ~ expansion. 
	Other available file-requestor widgets include the XiFileSelector from 
Iris Software's book, the xdbx file-selector extracted by David Nedde 
(daven@wpi.wpi.edu), and the FileNominator from the aXe distribution.
	The GhostView, Xfig, and vimage packages also include file-selector 
widgets.
Subject:  67)  What widget is appropriate to use as a drawing canvas?
	Some widget sets have a widget particularly for this purpose -- a
WorkSpace or DrawingArea which doesn't display anything but lets your Xt 
application know when it has been re-exposed, resized, and when it has received
user key and mouse input. 
	The best thing to do for other widget sets -- including the Athena set 
-- is to create or obtain such a widget; this is preferable to drawing into a 
core widget and grabbing events with XtAddEventHandler(), which loses a number 
of benefits of Xt and encapsulation of the functionality .  
	At least one version has been posted to comp.sources.x (name???). 
	The publicly-available programs xball and xpic include other versions. 
	The Athena Widget manual (mit/doc/Xaw/Template in the R5 distribution) 
includes a tutorial and source code to a simple widget which is suitable for 
use. 
	The Free Widget Foundation set contains a Canvas widget.
Subject:  68)  What is the current state of the world in X terminals?
Jim Morton (jim@applix.com) posts quarterly to comp.windows.x a list of 
manufacturers and terminals; it includes pricing information. 
Notable buyers-guide surveys include:
	- the September 1991 issue of Systems Integration
Subject:  69)  Where can I get an X server with a touchscreen or lightpen?
	Labtam (+61 3 587 1444, fax +61 3 580 5581) offers a 19" Surface 
Acoustic Wave touch-screen option on its Xengine terminals.
	Tektronix (1-800-225-5434) provides an X terminal with the Xtouch 
touch-screen. This terminal may also be resold through Trident Systems
	Metro Link (305-970-7353) supports the EloGraphics Serial Touch Screen 
Controllers.
Subject:  70)  Where can I get an X server on a PC (DOS or Unix)?
	MIT X11R5 already provides a server to many 386/486 *Unixes* with 
support for many of the popular video graphics adapters; and for other 
non-MSDOS PCs you can obtain a server from these sources:
	XFree86 (formerly X386 1.2E) is an enhanced version of X386 1.2, which 
was distributed with X11R5; it includes many bug fixes, speed improvements, and
other enhancements. Source for version 1.2 [2/93] is on export.lcs.mit.edu in 
pub/contrib, ftp.physics.su.oz.au in /X386, and ftp.win.tue.nl in /pub/X386. In
addition, binaries are on ftp.physics.su.oz.au, and ftp.win.tue.nl among other 
systems. Info: x386@physics.su.oz.au.
	Note: this package obsoletes Glenn Lai's Speedup patches for an 
enhanced X11R5 server for 386 UNIXes with ET4000 boards (SpeedUp.tar.Z on 
export).
	Metro Link Inc. (305-970-7353, sales@metrolink.com; in Europe contact
ADNT, (33 1) 3956 5333) ships an implementation of X11R4 for the 386/486 Unix
market.
	SGCS offers X386 Version 1.3, based on Thomas Roell's X11R5 two-headed
server, in binary and source form. Information: 408-255-9665, info@sgcs.com.
	ISC, SCO, UHC, and other well-known operating-system vendors typically
offer X servers.
	For MSDOS PCs:
Daniel J. McCoy (mccoy@gothamcity.jsc.nasa.gov) has started posting monthly a 
list of non-UNIX servers for PCs, Macs, and Amigas; it includes pricing 
information. The current copy is kept on export in contrib as 
XServers-NonUNIX.txt.Z. 
An article on PC X servers appears in the March 2, 1992 Open Systems Today.
	Also of possible use:
	Net-I from Programit (212-809-1707) enables communication among 
DOS, OS/2 and Unix machines and can be used to display PC sessions on your
Unix X display.
Subject:  71)  Where can I get an X server on a Macintosh running MacOS?
	eXodus from White Pine Software (603-886-9050) runs on any Mac with
at least 1MB of memory and runs the X server within a standard Macintosh 
window.  Version 3.0 [6/91] supports intermixing of X and Mac windows and
the ADSP protocol. The version supports the SHAPE extension and includes
DECwindows support.
	Apple's MacX runs on MacPlus or newer machines with >= 2MB of memory
and system software 6.0.4 or later. Version 1.1 is fully X11R4-based.  It 
supports full ICCCM-compatible cut and paste of text AND graphics between the 
Macintosh and X11 worlds, the SHAPE extension (including SHAPEd windows on the 
Macintosh desktop), an optional built-in ICCCM-compliant window manager, X11R4 
fonts and colors, a built-in BDF font compiler, and built-in standard 
colormaps. Upgrades to MacX are available by ftp from aux.support.apple.com. 
Info: 408-996-1010.  
	[Note: MacX is also the name of a vax-mac xmodem transfer utility.]
	Also: 
	Liken (1-800-245-UNIX or info@qualix.com) software enables monochrome
68000 Mac applications to run on a SPARC system running X. 
	Xport (1-800-245-UNIX (415-572-0200) or xport@qualix.com) enables Mac 
applications to display on an X-based workstation by turning the Mac into an X 
client.
	Intercon has a product called Planet-X which enables Mac applications
to display on an X server.
Subject:  72)  Where can I get X for the Amiga?
	The new Amiga 3000 machines offer an X server and OPEN LOOK tools and
libraries on a full SVR4 implementation.
        GfxBase, Inc. provides "X11 R4.1" for the AmigaDos computer; it 
contains X11R4 clients, fonts, etc., and a Release 4 color server. An optional 
programmer's toolkit includes the header files, libraries, and sample programs.
Info from GfxBase, 408-262-1469. [Dale Luck 
(uunet!{cbmvax|pyramid}!boing!dale); 2/91]
Subject:  73)  Where can I get a fast X server for a workstation?
	The R5 server should be among the fastest available for most machines.
	Sun sells a "Direct Xlib" product which improves rendering for 
applications running on the same machine as the X server; the replacement Xlib
library accesses graphics hardware directly using Sun's Direct Graphics Access 
(DGA) technology.
	International Quest Corporation (408-988-8289) has an optimized R4 
server for Sun3/4 under SunOS 4.0.
	Unipalm have R4 Servers for Sun3 and Sparc platforms. These are 
optimised to use graphics hardware and will run with Sunview. Information:
+44 954 211797 or xtech@unipalm.co.uk.
	Xgraph's Xtool (408-492-9031) is an X server implemented in SunView 
which boasts impressive results on Sun 3 and SPARC systems. [6/90]
Several companies are making hardware accellerator boards:
	Dupont Pixel Systems (302-992-6911), for Sun.
	Megatek's (619-455-5590) X-cellerator board for the Sun 3 and Sun 4 is 
based on the TI 34020; the company claims performance improvements of 5x to 
10x over the sample X11R3 server.
Subject:  74)! Where can I get a server for my high-end Sun graphics board?
        Takahashi Naoto (Electrotechnical Laboratory, ntakahas@etl.go.jp) has 
modified the MIT X11R5 server to support the Sun CG8, CG9, and CG12 boards.  
The files are on export in contrib/Xsun24-3.[01].tar.Z.  Note that both files 
are necessary to build Xsun24-3.1.
	The JPL R5 Xsun Multi-screen server is a general purpose replacement
for the MIT server/ddx/sun layer; it provides for the screen to be split among
several monitors and implements several other features above the MIT 
implementation. Available on export.lcs.mit.edu in the file
contrib/R5.Xsun.multi-screen.tar.Z. [Kaleb Keithley, kaleb@thyme.jpl.nasa.gov,
12/91; the file was updated 24 Mar 1993.]
Subject:  75)  Where can I get an "X terminal" server for my low-end Sun 3/50?
	Seth Robertson (seth@ctr.columbia.edu) has written Xkernel; the current
version [1.4 as of 8/91, 2.0 expected RSN] is on sol.ctr.columbia.edu 
[128.59.64.40] in /pub/Xkernel.gamma. It turns a Sun 3/50 into a pseudo- X 
terminal; most of the overhead of the operating system is side-stepped, so it 
is fairly fast and needs little disk space.
	A similar approach is to run the regular X server by making /etc/init
a shell script which does the minimal setup and then invokes Xsun, like this
example script from mouse@larry.mcrcim.mcgill.EDU:
#! /bin/sh
exec >/dev/console 2>&1
/etc/fsck -p /dev/nd0
case $? in
 	4)	/etc/reboot -q -n
 	8)	echo ND fsck failed - get help
 		/etc/halt
 	12)	echo Interrupted
 		/etc/reboot
 	*)	echo Unknown error in reboot fsck - get help
 		/etc/halt
esac
/bin/dd if=/tmp-fs of=/dev/nd2 bs=512 count=128 >/dev/null 2>&1
/etc/mount /dev/nd2 /tmp
/etc/ifconfig le0 netmask 255.255.255.0 broadcast 132.206.41.255
/etc/mount -o ro apollo:/u2/x11/lib /local/lib/X11
/etc/route add default 132.206.41.1 1 >/dev/null
set `/etc/ifconfig le0`
exec /Xsun -once -multidisp -mux -query \
	`(sh -vn </local/lib/X11/xdm-servers/$2 2>&1)`
Subject:  76)  What terminal emulators other than xterm are available?
	PCS has rewritten xterm from scratch using a multi-widget approach that
can be used by applications. A version is on the R5 contrib tape and on
export in contrib/emu.tar.Z [10/91]. For more information, contact 
me@dude.pcs.com.
	mxterm, a Motif-based xterm is available from the Paderborner 
ftp-Server ftp@uni-paderborn.de (131.234.2.32), file 
/unix/X11/more_contrib/mxterm.tar.Z.
	The Color Terminal Widget provides ANSI-terminal emulation compatible
with the VTx00 series; a version is on export in contrib/CTW-1.1.tar.Z. A
Motif version is on ftp.stna7.stna.dgac.fr in pub/Term-1.0.tar.Z.
	kterm 4.1.2 is an X11R4-based vt100/vt102 (and Tektronix 4014) terminal
emulator that supports display of Chinese, Japanese, and Korean text (in VT 
mode).  Also supported are: ANSI color sequences, multi-byte word selection, 
limited Compound Text support, and tab and newline preservation in selections.
kterm 4.1.2 is also available from these anonymous ftp sites:
	clr.nmsu.edu:pub/misc/kterm-4.1.2.tar.Z  [128.123.1.14]
	export.lcs.mit.edu:contrib/kterm-4.1.2.tar.Z  [18.24.0.12]
	kum.kaist.ac.kr:pub/unix/Xstuffs/kterm-4.1.2.tar.Z  [137.68.1.65]
[courtesy of Mark Leisher <mleisher@nmsu.edu> ]
	kterm-5.1.1.tar.Z is now on export [12/92].
	mterm, by mouse@larry.McRCIM.McGill.EDU, is an X terminal emulator
which includes ANSI X3.64 and DEC emulation modes.  mterm can be had by ftp to 
larry.mcrcim.mcgill.edu (132.206.1.1), in X/mterm.src/mterm.ball-o-wax.
	Cxterm is a Chinese xterm, which supports both GB2312-1980 and the 
so-called Big-5 encoding.  Hanzi input conversion mechanism is builtin in 
cxterm.  Most input methods are stored in external files that are loaded at run
time.  Users can redefine any existing input methods or create their own ones.
The X11R5 cxterm is the rewritten of cxterm (version 11.5.1) based on X11R5 
xterm; it is in the R5 contrib software.  [thanks to Zhou Ning 
<zhou@tele.unit.no> and Steinar Bang <uunet!idt.unit.no!steinarb>.]
	XVT is available on export's contrib in xvt-1.0.tar.Z and 
xvt-1.0.README. It is designed to offer xterm's functionality with lower swap 
space and may be of particular use on systems driving many X terminals.
	x3270 is in X11R5 contrib/.
Also:
	IBM sells a 3270 emulator for the RS/6000 (part #5765-011); it's based
on Motif. 
	Century Software (801-268-3088) sells a VT220 terminal emulator for X. 
VT102, Wyse 50 and SCO Color Console emulation are also available. 
	Grafpoint's TGRAF-X provides emulation of Tektronix 4107, 4125, and 
42xx graphics terminals; it's available for most major platforms. Information
(inc. free demo copies): 800-426-2230; Fax. 408-446-0666; uunet!grafpnt!sales.
	IXI's X.deskterm, a package for integrating character-based 
applications into an X environment, includes a number of terminal-emulation
modules. Information: +44 (0223) 462131. [5/90]
	Pericom produces Teem-X, a set of several emulation packages for a
number of Tek, DEC, Westward, and Data General terminals. The software runs on
Sun 3, Sun 4, Apollo, DEC, ISC, IBM/AIX. Information: US: 609-895-0404, 
	SCO's SCOterm (info@sco.COM), part of its Open Desktop environment, is
a Motif-compliant SCO ANSI color console emulator.
Subject:  77)! Where can I get an X-based editor or word-processor?
	You can ftp a version of GNU Emacs, the extensible, customizable, 
self-documenting, real-time display editor, including X11 support, from
prep.ai.mit.edu [18.71.0.38]:/pub/gnu/emacs-18.59.tar.Z or
informatik.tu-muenchen.de:/pub/GNU/emacs/emacs-18.59.tar.Z.
	Epoch is a modified version of Gnu Emacs (18) with additional 
facilities useful in an X environment. Current sources are on cs.uiuc.edu 
(128.174.252.1) in ~ftp/pub/epoch-files/epoch; the current [3/92] version is 
4.0. [In Europe, try unido.informatik.uni-dortmund.de].  There are two 
subdirectories:  epoch contains the epoch source, and gwm contains the source 
to the programmable window manager GWM, with which epoch works well.] 
You can get on the Epoch mailing list by sending a request to 
epoch-request@cs.uiuc.edu.
	Lucid Emacs is a version of GNU Emacs derived from an early version of
Emacs version 19.  It currently requires X Windows to run;  X support is
greatly enhanced over GNU Emacs version 18, including support for multiple X
windows, input and display of all ISO-8859-1 (Latin1) characters, Zmacs/Lispm
style region highlighting, a customizable Motif-like menubar, more powerful
keymap support, flexible text attributes, support on regional and screen-local
basis through X resources and/or lisp, and support for the X11 selection
mechanism. Lucid Emacs is free; the latest version (2/93) is 19.4, and is
available from labrea.stanford.edu in the pub/gnu/lucid/ directory.
	The Andrew system on the X11 contrib tapes has been described as one of
the best word-processing packages available. It supports word processing with 
multi-media embedded objects: rasters, tables/spread sheets, drawings, style 
editor, application builder, embedded programming language, &c. Release 5.1 
became available 2 June 92.  [Fred Hansen (wjh+@ANDREW.CMU.EDU)]
	You may be able to use the Remote Andrew Demo service to try this 
software; try "finger help@atk.itc.cmu.edu" for help.
	The InterViews C++ toolkit contains a WYSIWIG editor called Doc; it 
saves and loads files in a LaTeX-*like* format (not quite LaTeX).  The package 
can also import idraw-PostScript drawings.
	A simple editor aXe (by J.K.Wight@newcastle.ac.uk) is available on 
export and arjuna.newcastle.ac.uk (128.240.150.1) as aXe-4.1.tar.Z [3/93]. It 
is based around the Xaw Text widget.
	TED is a simple Motif-based text editor; it is a wrapper around the 
Motif text widget which offers search/replace, paragraph formatting, and 
navigation features. TED is available from ftp.eos.ncsu.edu (152.1.9.25) as 
/pub/bill.tar.Z; here are also executables there.
	Point, by crowley@unmvax.cs.unm.edu (Charlie Crowley), is Tcl/Tk-based
and offers dyanimic configuration and programming in the Tcl macro language.
The editor is available from unmvax.cs.unm.edu (129.24.16.1) as
pub/Point/point1.1-tar.Z.
	asedit, by Andrzej Stochniol (astoch@ic.ac.uk) is on export in 
contrib/asedit.tar.Z. It is a simple text editor built around the Motif Text 
widget. Version 1.11 was released 1/93.
Also:
	Elan Computer Group (Mountain View, CA; 415-964-2200) has announced the
Avalon Publisher 2.0, an X11/OPEN LOOK WYSIWYG electronic publishing system.
	FrameMaker and FrameWriter are available as X-based binary products for
several machines. Frame is at 800-843-7263 (CA: 408-433-3311).
	WX2 (formerly InDepthEdit) is available from Non Standard Logics 
(+33 (1) 43 36 77 50; requests@nsl.fr).
	Buzzwords International Inc. has an editor called 'Professional Edit' 
that runs under X/Motif for various platforms.  Info: +1-314-334-6317.
	DECwrite is available from DEC for some DEC hardware and SunWrite is
available from Sun.
	IslandWrite will soon be available from Island Graphics (415-491-1000) 
(info@island.com) for some HP & Apollo platforms.
	Interleaf is currently available from Interleaf (800-241-7700, 
MA: 617-577-9800) on all Sun and DEC platforms; others are under development.
	The Aster*x office integration tools from Applix (1-800-8APPLIX, 
MA: 508-870-0300) include a multi-font WYSIWG document composer; for several 
systems.
	ArborText, Inc. provides an X11 version of its Electronic Publishing 
program called "The Publisher". The Publisher is available on Sun, HP and 
Apollo workstations. Contact Arbortext at 313-996-3566. [5/90]
	Iris Computing Laboratories offers the "ie" editor. Info:  
+1-505-988-2670 or info@spectro.com.
	BBN/Slate from BBN Software Products includes a menu-driven word
processor with multiple fonts and style sheets.  It supports X on
multiple platforms. (617-873-5000 or slate-offer@bbn.com) [11/90]
	The powerful "sam" editor by Rob Pike is split into a host portion and 
a front-end graphics portion, which now has an X implementation.  sam is now 
available by anonymous ftp from research.att.com, in dist/sam/bundle.Z.  Watch 
that space for updated versions.  There is a mailing list for sam users; 
requests to <sam-fans-request@hawkwind.utcs.toronto.edu>. A set of extensions
which augment the mouse activity with the keyboard is available from 
uxc.cso.uiuc.edu in pub/sam/samx1.0.shar.
	Innovative Solutions (505-883-4252; or Brian Zimbelman, 
is!brian@bbx.basis.com) publishes the user-configurable Motif-based Xamine 
editor.
	Qualix offers a product. Information: info@qualix.com or 800-245-UNIX 
	Typex is a Motif-based editor available for several systems. 
Information: Amcad Research, 408-867-5705, fax -6209.
	WordPerfect offers an X-based version of WordPerfect 5.1 for several
workstations. Information: 801-222-5300 or 800-451-5151.
Subject:  78)  Where can I get an X-based mailer?
	xmh, an X interface to mh, is distributed with the X11 release.
	Xmail is an X-based window interface to Berkeley-style mail handlers;
it is styled primarily after the Sunview mailtool application and builds on
most Unix systems. The current release [1/92] is 1.4, available in the MIT 
X11R5 contrib tape and from export and uunet. Info: Jeff Markham,
markham@cadence.com.
	MMH (My Mail Handler), a motif interface to the MH mail handler, is 
available from ftp.eos.ncsu.edu (152.1.9.25) in pub/bill.tar.Z; it is bundled
with the TED editor, which it uses for composing messages. Motif 1.1 is 
required; if you don't have it, look for DEC and SPARC executables in the same 
place.  Information and problems to: Erik Scott, escott@eos.ncsu.edu. [1/92]
	The Andrew Toolkit supports the Andrew Message System; it is available
from export and many other X archives and from emsworth.andrew.cmu.edu 
(128.2.30.62), or send email to susan+@andrew.cmu.edu. Release 5.1 became
available 2 June 92.
	You may be able to use the Remote Andrew Demo service to try this 
software; try "finger help@atk.itc.cmu.edu" for help.
	XMailTool is an Xaw-based interface to a BSD-style mail reader; version
2.0 was released 9/92. Information: Bob Kierski, bobo@cray.com or 612-683-5874.
	Cem is a Motif-based mailer using standard mailbox formats; it is on
nelson.tx.ncsu.edu in pub/Cem. Information: Sam Moore (Sam_Moore@ncsu.edu).
Also:
        Alfalfa Software offers Poste, a UNIX-based mailer that has Motif- and 
command-based interfaces.  It includes support for multimedia enclosures, and 
supports both the Internet and X.400 mail standards.  Information: 
info@alfalfa.com, +1 617-497-2922.
	Z-Code Software offers Z-Mail for most Unix systems; binaries support
both tty and Motif interfaces. The mailer includes a csh-like scripting 
language for customizing and extending mail capabilities.  Information: 
info@z-code.com, +1 415 499-8649.
	Several vendors' systems include X-based mailers. DEC offers dxmail; 
Sun offers an X-based mailtool; SCO (info@sco.com) includes SCOmail in its Open
Desktop product.
Several integrated office-productivity tools include mailers:
	The Aster*x office integration tools from Applix (1-800-8APPLIX, 
MA: 508-870-0300) include a mailer.
Subject:  79)! Where can I get an X-based paint/draw program?
	xpic is an object-oriented drawing program. It supports multiple font 
styles and sizes and variable line widths; there are no rotations or zooms.
xpic is quite suitable as an interactive front-end to pic, though the 
xpic-format produced can be converted into PostScript. (The latest version is 
on the R4 contrib tape in clients/xpic.)
	xfig (by Brian V. Smith (bvsmith@lbl.gov)) is an object-oriented 
drawing program supporting compound objects.  The xfig format can be converted 
to PostScript or other formats. Recent versions are on the R5 contrib tape or 
on export in /contrib/R5fixes (version 2.1.6 [11/92]).
        idraw supports numerous fonts and various line styles and arbitrary 
rotations. It supports zoom and scroll and color draws and fills. The file 
format is a PostScript dialect. It can import TIFF files. Distributed as a part
of the InterViews C++ toolkit (current release 3.1, from 
interviews.stanford.edu) .
	A version of Robert Forsman's (thoth@lightning.cis.ufl.edu) xscribble,
an 8-bit paint program for X, is now on ftp.cis.ufl.edu in pub/thoth/. [2/93]
	xpaint is available from ftp.ee.lbl.gov as xpaint.tar.Z.
	A rewrite, Xpaint 2.0, by David Koblas (koblas@netcom.com) was released
2/93 as xpaint2pl3.tar.Z. xpaint is a bitmap/pixmap editing tool.
	A new OpenWindows PostScript-based graphical editor named 'ice' is now 
[2/91] available for anonymous ftp from Internet host lamont.ldgo.columbia.edu 
(129.236.10.30).  ice (Image Composition Environment) is an imaging tool that
allows raster images to be combined with a wide variety of PostScript 
annotations in WYSIWYG fashion via X11 imaging routines and NeWS PostScript 
rasterizing. (It may require OpenWindows and Sun C++ 2.0.)
	tgif by William Cheng (william@oahu.cs.ucla.edu) is available from most
uucp sites and also from export and from cs.ucla.edu. It is frequently updated;
version 2.12-patch18 was released 3/93.
	The "pixmap" program (info: colas@sa.inria.fr) for creating pixmaps is 
on the R5 contrib tape; it resembles the bitmap client. Version 2.1 is now 
available. [11/92]
	Although MetaCard is not generally classified as a paint program, a 
full 24-bit color image editor is built into the program, which can be used for
light image editing and for producing color icons (info@metacard.com). MetaCard
is available via anonymous FTP from ftp.metacard.com, csn.org, or 
	pixt by J. Michael Flanery produces XPM output.
Also:
	dxpaint is a bitmap-oriented drawing program most like MacPaint; it's 
good for use by artists but commonly held to be bad for drawing figures or 
drafting. dxpaint is part of DEC's Ultrix release.
	FrameMaker has some draw capabilities. [4/90]
	BBN/Slate from BBN Software Products includes a full-featured draw and
paint program with object grouping and multiple patterns; multiple X platforms.
(617-873-5000 or slate-offer@bbn.com). [11/90]
	Dux Ta-Dah!, 1-800-543-4999
	IslandGraphics offers IslandDraw, IslandPaint, IslandPresent.
Info: 415-491-1000.
	Corel Draw, 613-728-8200; ported to X by Prior Data Sciences 
	Arts&Letters Composer, 214-661-8960
	Ficor AutoGraph, 513-771-4466
	OpenWindows includes the olpixmap editor.
	SCO ODT includes the SCOpaint editor.
	HP VUE includes the vueicon editor.
Several integrated office-productivity tools include draw/paint capabilities:
	The Aster*x office integration tools from Applix (1-800-8APPLIX, 
MA: 508-870-0300) include draw/paint capabilities.
[thanks in part to Stephen J. Byers (af997@cobcs1.cummins.com) and to 
J. Daniel Smith (dsmith@ann-arbor.applicon.slb.com)]
David B. Lewis 					faq%craft@uunet.uu.net
		"Just the FAQs, ma'am." -- Joe Friday 
David B. Lewis		Temporarily at but not speaking for Visual, Inc.
day: dbl@visual.com	evening: david%craft@uunet.uu.net
