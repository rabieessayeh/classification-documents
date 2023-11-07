Archive-name: x-faq/part4
Last-modified: 1993/04/04
Subject:  80)! Where can I get an X-based plotting program?
These usually are available from uucp sites such as uunet or other sites as
marked; please consult the archie server to find more recent versions.
 gnuplot	X (xplot), PostScript and a bunch of other drivers.
	export.lcs.mit.edu [and elsewhere]:contrib/gnuplot3.1.tar.Z
 gl_plot	X output only [?]
	comp.sources.unix/volume18
 graph+
	yallara.cs.rmit.oz.au:/pub/graph+.tar.Z [131.170.24.42]
	comp.sources.unix/volume8
 pdraw,drawplot		2D and 3D X,PS
	scam.berkeley.edu:/src/local/3dplot.tar.Z [128.32.138.1]
	scam.berkeley.edu:/src/local/contour.tar.Z [128.32.138.1]
	scam.berkeley.edu:/src/local/drawplot.tar.Z [128.32.138.1]
	uunet:~ftp/contrib/drawplot.tar.Z
 xgraph		plot, zoom. Outputs PS or HPGL.
	shambhala.berkeley.edu:/pub/xgraph-11.tar.Z [128.32.132.54]
	sun1.ruf.uni-freiburg.de:X11/contrib/xgraph-11.tar.Z [132.230.1.1]
	nisc.jvnc.net:pub/xgraph-11.tar.Z [128.121.50.7]
	comp.sources.x/volume3
	or many other sites 
 ACE/gr (formerly xvgr and xmgr) XY plotting tools
	ftp.ccalmr.ogi.edu [129.95.72.34]
	XView version: /CCALMR/pub/acegr/xvgr-2.09.tar.Z
	Motif version: /CCALMR/pub/acegr/xmgr-2.09.tar.Z
	[mirrored on export in /contrib/acegr]
 XGobi		An interactive dynamic scatter-plotting tool from Bellcore
	lib.stat.cmu.edu: general/xgobi* [log in as statlib with your email
	as the password; or send email to statlib@lib.stat.cmu.edu containing
	the one-line message "send xgobi from general"]
	Information from: Debby Swayne, dfs@bellcore.com.
 Robot		a scientific XView-based graph plotting and data analysis tool
	ftp.astro.psu.edu:pub/astrod/robotx0.46.tar.Z [128.118.147.28]
 plotmtv	a multi-purpose 2D/3D plotter
	tanqueray.berkeley.edu:/pub/Plotmtv1.3.1.tar.Z
[2/91. Thanks in part to: emv@ox.com (Ed Vielmetti); geoff@Veritas.COM 
(Geoffrey Leach); Paul A. Scowen (uk1@spacsun.rice.edu); black@beno.CSS.GOV 
(Mike Black)]
Subject:  81)  Where can I get an X-based spreadsheet?
A version of "sc" for X and which supports Lotus files is available from
vernam.cs.uwm.edu in xspread2.0.tar.Z. It also includes graphing functions.
Information: soft-eng@cs.uwm.edu.
The GNU package OLEO is available in prep.ai.mit.edu:pub/gnu/oleo-1.2.2.tar.Z;
it can generate PostScript renditions of spreadsheets.
Also:
Several of the below are part of integrated office-productivity tools which may
also include word-processing, email, conferencing, image processing, and 
drawing/painting, among other features.
Vendor                        Product    Contact Information 
Access Technology             20/20      508-655-9191
Informix                      WingZ      800-331-1763
Quality Software Products     Q-Calc/eXclaim    800-628-3999 (CA:213-410-0303) 
Unipress                      Q-Calc     201-985-8000
Uniplex                       Uniplex    214-717-0068, 800-356-8063
Digital			      DECdecision   1-800-DIGITAL
Applix			      Aster*x	 508-870-0300, 1-800-8APPLIX.
AIS			      XESS	 919-942-7801, info@ais.com
BBN Software Products         BBN/Slate  617-873-5000 slate-offer@bbn.com
Elsid Software Systems	      Ripcam	 613-228-9468
SAS by the SAS Institute now has a spreadsheet module; the X version is
available on the current popular RISC platforms.
Subject:  82)  Where can I get X-based project-management software?
Vendor                        	Product		Contact Information 
Productivity Solutions		Ultra Planner	617-237-1600
Quality Software Products 	MasterPlan Version, 310-410-0303 sales@qsp.com
Digital Tools, Inc.		AutoPLAN	408-366-6920, 800-755-0065
						service@cossack.cosmic.uga.edu
GEC-Marconi Software Systems	GECOMO Plus	703-648-1551
GEC-Marconi Software Systems	SIZE Plus	703-648-1551
Mantix				Cascade		703-506-8833
Advanced Management Solutions	Schedule Publisher	800-397-6829
Auburn University		??		??
[thanks to Pete Phillips (pete@egh-qc.co.uk); 7/92]
[thanks to Atul Chhabra (atul@nynexst.com); 10/92]
Subject:  83)  Where can I get an X-based PostScript previewer?
	Ghostscript is distributed by the Free Software Foundation 
(617-876-3296) and includes a PostScript interpreter and a library of graphics
primitives. Version 2.5.2 is now available; the major site is prep.ai.mit.edu. 
	GSPreview (by the Computing Laboratory of the University of Kent at 
Canterbury) is an X user interface (WCL-based) to the Ghostscript 2.4[.1]
interpreter [5/92].  The source is available for anonymous ftp from 
export.lcs.mit.edu as gspreview.2.0.tar.Z.
	Ghostview (by Tim Theisen, tim@cs.wisc.edu) is full-function user 
interface for GhostScript. Check ftp.cs.wisc.edu or prep.ai.mit.edu for 
/pub/ghostview-1.4.1.tar.Z [1/93]. There are also several executables available
on ftp.cs.wisc.edu:/pub/X/ghostview-exe for various architectures.
Also:
	ScriptWorks is Harlequin's software package for previewing and printing
PostScript(R) descriptions of text and graphics images; previewers for X are 
available. For information call +44-223-872522 or send email to 
scriptworks-request@harlqn.co.uk.
	Image Network's Xps supports the full PostScript language and renders
in color, grayscale, or monochrome. Fonts displayed are anti-aliased. Info:
Image Network, +1 415 967 0542.
	Digital's dxpsview runs on UWS 2.1 and 2.2.
	Sun's pageview runs with the X11/NeWS server. 
Subject:  84)  Where can I get an X-based GKS package?
	The latest freely-available XGKS can be obtained from 
xgks-request@unidata.ucar.edu; this is a 2c implementation derived from the 
X11R4 contrib XGKS from IBM and the University of Illinois. The release
is on unidata.ucar.edu [128.117.140.3] as pub/xgks.tar.Z. [12/90]
	In addition, Grafpak-GKS is available from Advanced Technology Center
	GKSUL is available from gks@ulowell.edu (ULowell CS department). It is
a 2b implementation which includes drivers for a variety of devices. It can be 
passed an X window ID to use. The package includes both C and Fortran bindings.
[11/90; from dsrand@mitre.org and from stew@hanauma.stanford.edu]
	An XgksWidget is produced by Neil Bowers (neilb@leeds.dcs; 
neilb@dcs.leeds.ac.uk); the latest [10/91] conforms with the new version of 
XGKS (2.4). It is available on export in contrib/xgks-widget.tar.Z. 
Subject:  85)  Where can I get an X-based PEX package?
	The first official release of PEX is with X11R5; fix-22 brings the
Sample Implementation server to version 5.1.
	The final PEX 5.1 Protocol specification is now available via anonymous
ftp to export.lcs.mit.edu (18.24.0.12), in the directory /pub/DOCS/PEX/. 
Changes made from the Public Review draft are listed in the file "5.1P_changes"
in that directory. [9/92]
	The final PEXlib 5.1 document is on export in pub/DOCS/PEXlib. [11/92]
	There is now available from the University of Illinois an 
implementation of the PEX 4.0 specification called UIPEX. It contains a "near-
complete" implementation of PHiGS and PHiGS PLUS. The file 
pub/uipex/uipex.tar.Z is on a.cs.uiuc.edu (128.174.252.1); the porting platform
was an RT running 4.3.  Questions and comments can to go uipex@cs.uiuc.edu. 
	In addition, the PEXt toolkit by Rich Thomson (rthomson@dsd.es.com) is 
available on export as PEXt.tar.Z; it includes a PEX widget making it easier to
include PEX in Xt-based programs.
Subject:  86)  Where can I get an X-based TeX or DVI previewer?
	The xtex previewer for TeX files is available from a number of archive 
sites, including uunet; the current version is usually on ftp.cs.colorado.edu
(128.138.204.31) in SeeTeX-2.18.5.tar.Z; pre-converted fonts are also on that 
machine. The distribution all includes "mftobdf" which converts PK, GF, and PXL
fonts to BDF format, where they can then be compiled for use by your local X
server. 
	The xdvi dvi-previewer is fairly comprehensive and easy to use. It is 
also available from a number of sites, including uunet and export.lcs.mit.edu;
current version is patchlevel 16 [12/92].
Subject:  87)  Where can I get an X-based troff previewer?
	X11R4 has two previewers for device-independent troff: the supported 
client xditview, and the contributed-but-well-maintained xtroff. An earlier 
version of xtroff also appeared on the R3 contributed source. xditview is also
in the R5 distribution.
	In addition, the xman client can be used to preview troff documents
which use the -man macros (i.e. man pages).
	If psroff is used its output can be viewed with a PostScript previewer.
In addition:
	xproof, an X previewer for ditroff has been contributed by Marvin 
Solomon (solomon@cs.wisc.edu); version 3.5 is available on export in 
contrib/xproof*. 	[8/90]
	Elan Computer Group (CA: 415-964-2200) produces eroff, a modified 
troff implementation, and Elan/Express, an X11 eroff previewer.
	SoftQuad (416-963-8337; USA only 800-387-2777, mail@sq.uu.net or
mail@sq.com) offers SoftQuad Publishing Software, including a substantially-
rewritten troff formatter, a better intermediate language with backwards 
compatibility, and an X11[R3,R4] previewer. (This is the package adopted by 
AT&T's own MIS department, and used in and re-sold by many parts of AT&T). 
[information from Ian Darwin, SoftQuad (ian@sq.com) 3/90]
	Image Network (1-800-TOXROFF; CA: 415-967-0542) offers the Xroff 
package, which includes a fine modified troff implementation and a set of 
X11-based page previewers. (This is the package OEM'ed by several hardware 
vendors.)
[mostly courtesy moraes@cs.toronto.edu (Mark Moraes)] [2/90]
Subject:  88)! Where can I get a WYSIWYG interface builder?
	A new release of the DIRT interface builder by Richard Hesketh works 
with X11R5 and includes some support for the Motif widget set. From the README:
  This builder allows the interactive creation and rapid prototyping of X user
  interfaces using the X Toolkit and a number of Widget Sets.  Dirt generates
  "Wc - Widget Creation" resource files and this distribution also includes the
  Widget Creation Library (version 1.06, with the exception of the demos and
  Mri/Ari source code) with the kind permission of its author David E. Smyth.
Check dirt.README, dirt.A2.0.tar.Z, and dirt.PS.Z on export.lcs.mit.edu.
	The InterViews 3.0.1 C++ toolkit contains a WYSIWIG interface builder 
called ibuild. ibuild generates code for an InterViews application complete 
with Imakefile and an X-resource file. Documentation is /pub/papers/ibuild.ps 
on interviews.stanford.edu (36.22.0.175).
	Quest Windows's (408-496-1900) ObjectViews C++ package includes an
interactive building tool. 
	Druid (Demonstrational Rapid User Interface Development) runs on SPARC 
machines using OSF/Motif 1.0; it is intended eventually to be a full UIMS but 
apparently now has only support for creating the presentation components, for 
which it generates C/UIL code. Info: Singh G, Kok CH, Ngan TY, "Druid: A System
for Demonstrational Rapid User Interface Development". Proc. ACM SIGGRAPH Symp 
on User Interface Software and Technology (UIST'90). ACM, NY, 1990, pp:167-177.
	The BYO interface builder is implemented in tcl.
Also:
	In addition, these commercial products (unsorted) are available in 
final or prerelease form [the * following the product name indicates that the 
product is known to allow the designer to specify for each widget whether a 
particular resource is hard-coded or written to an application defaults file,
for at least one form of output]. Some are much more than user-interface tools;
some are full user interface management systems; information on most is not
up-to-date:
Product Name		Look/Feel	Code Output		Vendor
HP Interface		Motif 1.1	C(Xm)			HP/Visual Edge
 Architect/ UIMX	
OPEN LOOK Express	OPEN LOOK	C(Xol+ helper lib)	AT&T /
								Visual Edge
UIMX 2.0 *		Motif 1.1	C(Xm + helper code)	Visual Edge
								& distributors
VUIT 2.0		Motif 1.1	C/UIL[r/w]		DEC 
X-Designer 1.1 *	Motif 1.1	C(Xm); C/UIL		Imperial
								Software
								Technology, Ltd
								sales@ist.co.uk
XFaceMaker2 (XFM2) * 	Motif 1.0	C;C/script (C-like procedural 
					language);C/UIL
							requests@nsl.fr
Builder Xcessory 2.0 *	Motif 1.1	C(Xm); C/UIL[r/w]	ICS 
					Ada			(617-621-0060)
								info@ics.com
XBUILD 1.1 *		Motif 1.0	C(Xm); C/UIL 		Nixdorf	
							xbuild@nixdorf.com
iXBUILD			Motif 1.1	C(Xm); C/UIL		iXOS Software
								karl@ixos.uucp
TeleUSE 2.1 *		Motif 1.1.5	C(Xm); C/UIL[r/w]
								Telesoft
							gui_info@telesoft.com
ezX 3.2			Motif 1.1	C(Xm +helper lib);C/UIL;Ada
								Sunrise
							       info@sunrise.com
Snapix			Motif		C/Xm			ADNT
OpenWindows Developers	OPEN LOOK 	GIL [-> C/XView]	Sun
Guide 3.0				GIL [-> C++/XView]
					GIL [-> C/PostScript for TNT]
ExoCode/SXM		Motif		C(Xm)			Expert Object
ExoCode/Plus		OPEN LOOK	XView			708-676-5555
TAE+			Xw;Motif	C(Xw,Xm); C/TCL (TAE Control Language,
					like UIL[needs helper library]);
					VAX Fortran; Ada; C++
								Nasa Goddard
MOB, XSculptor			Motif; OpenLook	C/Xm,UIL; C/Xol		Kovi
PSM			PM, MSW 3.0,	C/UIL			Lancorp
			Motif 1.1.2,Mac				Pty Ltd.
								Fax:  629 1296
								(Australia)
MOTIFATION		Motif 1.0|1.1.2	C(Xm)			AKA EDV
						       +49 (0) 234/33397-40 fax
UIB			Open Look/Motif	C++(OI)			ParcPlace 
Look for magazine reviews for more complete comparisons of meta-file formats,
documentation, real ease-of-use, etc; Unix World and Unix Review often carry
articles.
	In addition, Neuron Data (1 415 321-4488) makes Open Interface, a 
window-system-independent object toolkit which supports interfaces which are 
or resemble (supersets of) Mac, Windows, and Motif and Open Look; the package 
includes an interface builder.
       In addition, the GRAMMI builder supports the development of Ada/X 
applications using its own set of objects which are planned to have a Motif 
look.  GRAMMI is written in Ada and generates Ada specs and stub bodies. 
	In addition, these non-WYSIWYG but related products may help for goals 
of rapid prototyping of the application interface:
	WCL: the Widget Creation Library. Basically describes the widget
hierarchy and actions in a resources file; available from fine archive servers
everywhere, including devvax.jpl.nasa.gov (128.149.1.143) in pub/. Wcl provides
a very thin layer over Xt without any internal tweaking. Version 2.5 is current
	WINTERP: an Xlisp-based Motif toolkit allows for interpretive 
programming. The copy on the R4 tape is outdated; get a copy off export or 
email to winterp-source%hplnpm@hplabs.hp.com. 
	The Serpent UIMS permits the building of user-interfaces without 
specific knowledge of coding but with an understanding of attributes being set
on a particular [Motif] widget.  Beta Release 1.2 is available from 
ftp.sei.cmu.edu (128.237.1.13) and can be found in /pub/serpent.  Serpent is 
also available on export.lcs.mit.edu (18.24.0.11) in /contrib/serpent. Email
questions can go to serpent@sei.cmu.edu. A commercial version of Serpent is
available as "Agora" from ASET, 221 Woodhaven Drive, Pittsburgh, PA 15228.
	Garnet is a Common Lisp-based GUI toolkit. Information is available 
from garnet@cs.cmu.edu.
	MetaCard is a hypertext/Rapid Application Development environment
similar to Apple/Claris Corporation's HyperCard (info@metacard.com). MetaCard 
is available via anonymous FTP from ftp.metacard.com, csn.org, or 
Subject:  89)  Where can I find X tools callable from shell scripts?
I want to have a shell script pop up menus and yes/no dialog boxes if the user 
is running X.
	Several tools in the R3 contrib/ area were developed to satisfy these
needs: yorn pops up a yes/no box, xmessage displays a string, etc. There are
several versions of these tools; few, if any, have made it to the R4 contrib/ 
area, though they may still be available on various archive sites.
	In addition, Richard Hesketh (rlh2@ukc.ac.uk) has posted the xmenu
package to comp.sources.x ("v08i008: xmenu") for 1-of-n choices.  [7/90]
	Two versions of XPrompt have been posted to comp.sources.x, the latter
being an unauthorized rewrite. [R. Forsman (thoth@reef.cis.ufl.edu), 1/91]
	There is a version of XMenu available from comp.sources.x; it is
being worked on and will likely be re-released.
	xp-1.1.tar.Z, xpick-1.0.tar.Z and xzap-1.0.tar.Z on export's contrib/
are tools by Gerry.Tomlinson@newcastle.ac.UK which act as X versions of the 
simple display and choice-making tools in K&P. [4/92]
	xtpanel lets the user build a panel containing interactive objects such
as buttons, sliders, text fields, etc., either from the command line or using a
simple scripting language. It is available for anonymous ftp from 
hanauma.Stanford.EDU (36.51.0.16) as pub/X/xtpanel.tar.Z and may also be found 
in the alt.sources archives.
Subject:  90)  Where can I get an X-based debugger?
	xdbx, an X interface to the dbx debugger, is available via ftp from 
export. The current [1/91] version is 2.1 patchlevel 2.
	An X interface to gdb called xxgdb is more like xdbx 2.1.2. It is part 
of comp.sources.x volume 11 [2/91]; xxgdb-1.06.tar.Z is on export.
	mxgdb is a Motif interface to gdb by Jim Tsillas 
(jtsillas@bubba.ma30.bull.com); version 1.1.5 was released 1/93.
	UPS is a source-level debugger which runs under the X11 and SunView
window systems on Sun and DEC platforms. It is available from export 
(18.24.0.11) as contrib/ups-2.45.tar.Z (also ups-2.45-to-2.45.2.patch.Z)
and unix.hensa.ac.uk (129.12.21.7) in /pub/misc/unix/ups (or try mail to 
archive@unix.hensa.ac.uk). [10/92] Unofficial fixes by Rod Armstrong 
(rod@sj.ate.slb.com) are on unix.hensa.ac.uk in 
/misc/unix/ups/contrib/rod@sj.ate.slb.com.
Also:
	MIPS produces a highly-customizable (WCL-based) Visual Debugger.
	You should be able to use Sun's dbxtool with its X11/NeWS server.
	The CodeCenter (617-498-3000) source-level debugger, available on most
major platforms, includes an X-based interface.
	AT&T offers the eXamine Graphical Interface, an X11 interface to dbx
and C++ dbx for Sun3 and Sun4 and sdb and sdb++ for 386 and 3B2 platforms. Call
1-508-960-1997 or contact examine@mvuxi.att.com for more information.
        Solbourne (+1 303-678-4626) offers PDB, its X-based debugger for C, C++
and Fortran.  PDB uses the OI toolkit and runs in either Open Look or Motif 
mode. 
	SCO (info@sco.com) offers dbXtra as part of several development 
systems.
        Lucid's Energize Programming System, a tightly integrated development
environment for C and C++ programs, incorporates a graphical user interface on
top of an extended version of gdb. Info:  lucid-info@lucid.com, or
Subject:  91)! How can I "tee" an X program identically to several displays?
	There are several protocol multiplexer tools which provide for the 
simultaneous display of X clients on any number of machines.
	XMX (an X Protocol Multiplexor) is available from wilma.cs.brown.edu 
(128.148.33.66) as pub/xmx.tar.Z It works independently of the server and does
not affect the application being shared; it was developed for use in the
electronic classroom.
	XTV is a conference program which can be used to duplicate the
"chalkboard" on several displays. Release 1 is available on the X11R5 contrib
tapes; a more recent version is on ftp.cs.odu.edu as pub/wahab/XTV.r2.tar.Z.
	SHX from Michael Altenhofen of Digital Equipment GmbH CEC Karlsruhe 
also does this; it is a "WYSIWIS" (What You See Is What I See) package in the 
context of a computer-based learning/training tool to provide online help from
remote tutors but is also useful for general window sharing. Information: 
shX@nestvx.enet.dec.com.  SHX can be found on export and 
		gatekeeper.dec.com:/pub/X11/contrib/shX.tar.Z, 
		crl.dec.com:/pub/X11/contrib/shX.tar.Z 
Modifications to SHX for color mapping and private color allocation by
Mark J. Handley (M.Handley@cs.ucl.ac.uk) are on cs.ucl.ac.uk in 
car/shX.car.tar.Z.
	XTrap is implemented as a server/library extension and can be used
to record and then replay an x session. It is available as:
		gatekeeper.dec.com      pub/X11/contrib/XTrap_v31.tar.Z
		export.lcs.mit.edu      contrib/XTrap_v31.tar.Z
	wscrawl can be used as a "multi-person paint program". It's available
on sax.stanford.edu as wscrawl.shar.Z.
	Shdr implements a simple shared whiteboard, without a chalk-passing
mechanism. It's available on parcftp.xerox.com as pub/europarc/shdr.tar.Z.
	SketchPad 1.0 (3/93) is a distributed interactive graphical editor 
particularly designed for sketching. Sources have been posted to alt.sources
and are available from ftp.igd.fhg.de (192.44.32.1) in ~ftp/incoming/sketchpad.
	The NESTOR project is described in "Upgrading A Window System For 
Tutoring Functions", Michael Altenhofen et al., the proceedings of the EXUG
Conference 11/90.
Also of use:
        Hewlett-Packard Co. has a commercial product, "HP SharedX" which works
under HP-UX currently on their 300, 400, and 700 series workstations and their
HP 700/RX X Stations.  Machines receiving shared windows can be any X server.
HP SharedX consists of a server extensions and a Motif based user interface
process.  Contact your local HP sales rep. for more information.
	IBM offers a commercial product.
	Sun offers multi-user confering software called ShowMe.
	InSoft (Mechanicsburg, PA, USA) offers multi-user confering software 
called Communique.
[Thanks in part to scott@spectra.com (Tim Scott), 5/91, and to Peter Cigehn 
(peter@lulea.trab.se), 8/92 ]
Subject:  92)  TOPIC: BUILDING THE X DISTRIBUTION [topic needs updating to R5]
Subject:  93)  What's a good source of information on configuring the X build?
	This FAQ includes information on a number of "gotchas" that can bite 
you on particular system. However, the best source of general information on 
building the X11 release is found in the Release Notes. The file is bundled 
separately from the rest of the release, so if it's become separated from your 
sources you can FTP another copy separately: the file RELNOTES.[ms,PS,TXT] at 
the top of the distribution. The file RELNOTES is also available from the 
xstuff mail server.
	In addition, O'Reilly & Associates's Volume 8 on X Administration
includes information on configuring and building X.
Subject:  94)  Why doesn't my Sun with a cg6 work with R5?
	Apparently gcc is the problem; it seems to produce fine code for all
Sun displays except for the cgsix. The new sunGX.o distributed with fix-07 
may fix the problem (note: not known to work on Solaris).
Subject:  95)  Why doesn't my Sun with SunOS 4.1 know about _dlsym, etc.?
	If you get errors with _dlsym _dlopen _dlclose undefined, link with 
libdl.a.  Add "-ldl" to your and eventually your site.def.  You may want to 
surround it with "-Bstatic -ldl -Bdynamic" if you add it to the EXTRA_LIBRARIES
variable, since "syslibs" get added after EXTRA_LIBRARIES on the eventual 
compilation command; otherwise you may not have a shared libdl.  (Or compile 
the stubs shared.)
[thanks to Joe Backo (joe.backo@East.Sun.COM), 12/91]
Subject:  96)  What is this strange problem building X clients on SunOS 4.1.2?
	In SunOS 4.1.2 Sun fixed a shared-library bug in ld which conflicts
with the way X11R4 builds the shared Xmu library, causing these symbols to be
undefined when building some X11 clients: 
	_get_wmShellWidgetClass
	_get_applicationShellWidgetClass
Compiling "-Bstatic -lXmu -Bdynamic" appears to work. 
To solve the problem if you are using OpenWindows 3.0 (X11R4-based Xt), please 
contact your local Sun office and request the following patches:
Patch i.d.      Description
100512-02       4.1.x OpenWindows 3.0 libXt Jumbo patch
100573-03       4.1.x OpenWindows 3.0 undefined symbols when using
                        shared libXmu
[Greg Earle, earle@Sun.COM; 7/92] 
A source patch for use with the MIT X11R4 libraries was developed by Conrad 
Kimball (cek@sdc.boeing.com); it retrofits into R4 some fixes made in R5 to
get around this problem. The patch is on export in [1/93]
	contrib/X11R4_sunos4.1.2_patch_version3.Z
Subject:  97)  Why can't gcc compile X11R4 on my SPARC?
I used gcc to compile the whole distribution, but I get several segmentation
faults when running X.
	Note first that gcc on RISC machines does not necessarily result in
any performance increase; it certainly is not as noticeable as it is on the
680x0 or VAX platforms.
	Here is the problem: gcc and cc use incompatible methods of passing 
structures as arguments and returning them as function values, so when 
gcc-compiled parts of X are linked with Sun-supplied functions that pass or 
return structs, run-time errors occur.  Affected programs include rgb and 
the server.
	This is from the GCC manual:
	On the Sparc, GNU CC uses an incompatible calling convention for 
	structures.  It passes them by including their contents in the argument
	list, whereas the standard compiler passes them effectively by 
	reference.
	This really ought to be fixed, but such calling conventions are not yet
	supported in GNU CC, so it isn't straightforward to fix it.
	The convention for structure returning is also incompatible, and
	`-fpcc-struct-return' does not help.
You can duck the problem either by using cc throughout or by using it for just
the routines which cause incompatibilities; the problem cannot be solved with 
compilation flags.  
	Files which need to be compiled using cc include:
		server/os/4.2bsd/oscolor.c 
	In addition, several of the "inet_" functions use structs as args or
return values:  
		clients/xhost/xhost.c 
		clients/xauth/gethost.c. 
Calls to inet_addr in /lib/CLX/socket.c and lib/X/XConnDis.c are possibly 
harmless as they don't involve structs.
[collected by bashford@scripps.edu (Don Bashford); 8/90]
Subject:  98)  What are these I/O errors running X built with gcc?
When I try to run xinit or the Xsun server I get the error 
	"Getting interface configuration: Operation not supported on socket. 
	Fatal server bug! no screens found."
	Running the gcc fixincludes script apparently didn't work. You can do 
this simple test:
	#include <sys/ioctl.h>
Run that through cc -E and gcc -E.  The last line of output is the piece of 
interest; it should be identical (modulo irrelevant differences like 
whitespace).  If the gcc version has 'x' where the cc version has 'i', your 
fixincludes run didn't work for some reason or other; go back to your gcc
sources and run `fixincludes`; then rebuild the X distribution. If they are 
identical, try running a make clean in mit/server and rebuilding, just to make 
sure everything gets compiled with the proper include files.  
[courtesy der Mouse, mouse@LARRY.MCRCIM.MCGILL.EDU; 9/90]
Subject:  99)  What are these problems compiling X11R4 on the older Sun3?
In mit/server/ddx/sun/sunCG3C.c, we have found "missing" defines for 
CG3AC_MONOLEN, CG3BC_MONOLEN, CG3AC_ENBLEN, CG3BC_ENBLEN. What should these be?
	The R4 Errata list distributed after X11R4 mentions that you can add
these lines to the file on older SunOS versions (e.g. 3.5) to compile:
        #define CG3AC_MONOLEN (128*1024)
        #define CG3AC_ENBLEN  CG3AC_MONOLEN
        #define CG3BC_MONOLEN CG3AC_MONOLEN
        #define CG3BC_ENBLEN  CG3AC_MONOLEN
	However, the Sun3 should not actually ever have the CG3 device, and so 
references to it can be removed from mit/server/ddx/sun/sunInit.c and the 
Imakefile.  [11/90]
Subject: 100)  What are these problems compiling the X server on SunOS 4.1.1?
The file <sundev/cg6reg.h> isn't being found.
	Sun omitted <sundev/cg6reg.h> from SunOS 4.1.1. Remove the #include 
from sunCG6C.c and replace it with the line 
	#define CG6_VADDR_COLOR   0x70016000
The file has changed from earlier versions of SunOS and should not be copied 
from another distribution.
Subject: 101)  What are these problems using R4 shared libraries on SunOS 4?
All of the executables that I try to run have the following results:
	ld.so: libXmu.so.4: not found
or even:
	ld.so: call to undefined procedure __GetHostname from 0xf776a96c
	If you are building with shared libraries on a Sun, remember that you 
need to run "ldconfig" as root after installing the shared libraries (if you've
installed X on a file-server, run it on the server's clients, too).  While 
building and installing the distribution, you need to be careful to avoid 
linking against any existing X shared libraries you might have (e.g. those 
distributed with OpenWindows).  You should make sure you do not have 
LD_LIBRARY_PATH set in your environment during the build or the installation.  
If you are going to keep xterm and xload as setuid programs, please note that 
the shared libraries must be installed in /usr/lib, /usr/local/lib, or 
/usr/5lib for these programs to work (or else those programs must be linked 
statically). [courtesy MIT X Consortium]
	Note also that the program mkfontdir is run as part of the build; it
attempts, however, to use the shared libraries before they have been installed.
You can avoid the errors by building mkfontdir statically (pass -Bstatic to
most C compilers).
Subject: 102)  Can OLIT programs run with R5 Xt? (_XtQString undefined)
This is a bug in the OLIT.  _XtQString was an external symbol that existed in 
X11R4 (upon which OW 3.0's libXt is based).  It wasn't documented and was 
removed in X11R5 (MIT's guarantee of upward compatibility between the R4 and R5
libraries only applied to the documented interface).  
A workaround is to temporarily set your LD_LIBRARY_PATH to point to the X11R4
or OpenWindows Xt library that you linked the program against.
[10/92; from Barry Margolin (barmar@think.com); 3/93 from Jeff Francis 
(jpf@heliocentric.com)]
Subject: 103)  How do I get around the SunOS 4.1 security hole?
	There is a security problem with certain R4 clients (xterm and xload)
running under SunOS 4.1 that have been installed setuid root and are using 
shared libraries; to avoid the problem, do one of these:
	1) make the program non-setuid. You should consult your system
administrator concerning protection of resources (e.g. ptys and /dev/kmem) used
by these programs, to make sure that you do not create additional security 
problems at your site.
	2) relink the programs statically (using -Bstatic).
	3) install the libraries before linking and link with absolute paths
to the libraries.
[from rws@expo.lcs.mit.edu (Bob Scheifler), 12/90]
The R5 version of xterm does this automatically by rebuilding xterm against the
newly-installed libraries when xterm is being installed; this prevents an suid
program from being built with libraries specified relatively. Note that this 
may cause an inconvenience when doing the installation from NFS-mounted disks. 
Xload has been rewritten to avoid the problem.
Subject: 104)  How do I get around the frame-buffer security hole?
	On many systems the frame-buffer is unsecured by default; this permits 
anyone who can log into your workstation to peek at your windowing session by 
accessing the frame-buffer directly, or, as less of a privacy issue but perhaps
more annoying, to [accidentally] start up a second X session on your console 
display. Check the man page for fbtab(5).
[Thanks to Art Mulder (art@cs.ualberta.ca); 2/93.]
Subject: 105)  TOPIC: BUILDING X PROGRAMS 
Subject: 106)  What is Imake?
	Imake is not a replacement for the make program; instead, it is a
makefile-generator that takes advantages of the include-file and macro-
processing capabilities of the C preprocessor cpp to generate makefiles 
suitable for building software on a particular system. Although it is not 
specific to X, the X release uses it to help solve a number of the 
configuration issues that arise in making such a large system widely portable.
	Imake has a fairly steep learning curve, in part because the process by
which the system-specific configuration files, system-independent configuration
files, and individual Imakefiles are melded to produce a Makefile is not 
obvious.
	There have been several different versions of imake; the R3, R4, and
R5 versions are different.
	You can obtain information on imake from these sources:
	- the R4 and R5 release notes and imake man page include information on
using Imake to build X
	- the R4 and R5 file mit/config/README also contains useful information
	- on the R4 tapes, contrib/doc/imake/imake.tex is Mark Moraes' R3/R4
guide to imake.
	- the R5 mit/doc/config/usenixws/paper.ms contains a paper by Jim
Fulton on an early version of Imake
	- Paul Dubois (dubois@primate.wisc.edu) has written a useful 
explanation of how Imake works and how to use it in configuring X for non-
supported systems; the document is available from ftp.primate.wisc.edu
in the directory ~ftp/pub/imake-stuff; look for config-X11R4.ms (troff) and 
config-X11R4.ps (PostScript). Some supplemental appendices are nearby. 
[7/91: document version is now 1.06] These imake papers are available by email;
mail a message body of "send imake-stuff help" to almanac@primate.wisc.edu.
	- see "System Administration - Imake: Friend of Foe?" by Dinah McNutt
in the November 1991 issue of SunExpert.
	- German readers should expect in June 1992 an article "Das Meta-Make 
/ I make, you make / Schwerelos" by Rainer Klute in "iX 
Multiuser-Multitasking-Magazin", directed at application programmers needing to
write Imakefiles. An English-language derivative of this article is in The
X Journal, issue 2:1.
	- The O'Reilly X Resource issue #2 contains Paul Davey's article on
demystifying Imake.
	- Alain Brossard's working document full of tips on Imake is in 
sasun1.epfl.ch:pub/imakefile.1.Z.
Subject: 107)  Where can I get imake?
	Versions are distributed with the R4 and R5 releases. An earlier 
version is distributed with the X11R3 release; some third-party toolkits 
redistribute versions of imake along with their own implementations of the 
template and configuration files. There are no real standards for such 
configuration files, although most *current* contributed software expects the 
templates distributed with X11R5.
	export contains the R5 distribution unpacked, so you can pick up imake
without picking up the entire distribution.
	A stand-alone version of Imake, but one stemming from X11R5, is in
ftp.germany.eu.net:pub/X11/misc/imake/imake-pure.tar.Z (192.76.144.75).
Subject: 108)  I have a program with an Imakefile but no Makefile. What to do?
	If you have R4 or R5 installed on your system, run "xmkmf". This is a 
script which runs imake for you with the correct arguments. The output is a 
Makefile configured for your system and based on the Imakefile. Then run make, 
which will use that new Makefile to compile the program.
Subject: 109)  Why can't I link to the Xlib shape routines?
When I try to compile certain programs, I get the following link error:
	Undefined:
	_XShapeQueryExtension
	_XShapeCombineMask
	These routines are actually part of the Shape Extension to X (SHAPE)
which was introduced in the MIT X11R4 distribution and allows non-rectangular
windows.  Like the other sample server extensions, the shape extension will 
only run on a server which supports it.  Pre-X11R4 servers, as well as many 
vendor-supplied servers, do not support the shape extension, in which case 
they will display rectangular windows anyway.
	In order to use the shape extension, you must link to the library 
libXext.a.  In the X11R4 distribution, this library and the associated includes
will be in the mit/extensions directory.  If you do not have these files, do 
not despair:  many freeware programs which use the shape extension can also be 
compiled without it by removing the -DSHAPE define from the Makefile; you can
probably do this and compile successfully against your older vendor-supplied X 
libraries.
[from John B. Melby, melby%yk.fujitsu.co.jp@uunet.uu.net, 3/91]
Subject: 110)  What are these problems with "_XtInherit not found" on the Sun?
When I run a X program that I wrote on a SunOS 4.0.3 or 4.1 machine I get the 
error "ld.so: symbol not found _XtInherit".
	What you are seeing is a side-effect of a kludge in the R4 libXt.a to 
get Sun shared libraries working.  Apparently, you can't share a function that 
is both called and compared, as _XtInherit is. This was handled by putting 
_XtInherit in the same file as a function that is always used, thereby 
guaranteeing that it would be loaded -- that is, in Initialize.c, where 
XtToolkitInitialize() and XtInitialize() reside. These routines would normally
be called.
	You are probably seeing this error because your program is not a normal
Xt-based program and does not call XtToolkitInitialize() anywhere. 
	1) it may be a program that uses Xt functions but never opens a 
connection to the X server.  [OSF/Motif's 1.1.0 UIL had this problem; it called
XtMalloc() and other Xt functions.] The solution is to add the call to your 
program; the function does not have to be executed, just linked in.
	2) alternatively, your program doesn't need any Xt functions and is
correct in not calling XtToolkitInitialize() -- it may be an Xlib or XView 
program. In this case, you can remove -lXt from your link command. 
	It should not be necessary to link the shared libraries statically,
although this will certainly solve the problem.
[from Jordan Hayes (now jordan@MooreNet.COM) and Danny Backx (db@sunbim.be); 
Subject: 111)  Why can't I compile my R3 Xaw contrib programs under the new X?
I have a program that worked well under X11R3. When I try to link it under 
the current version of X, I get this message:
	Undefined:
	_XtScrollBarSetThumb
	_XtTextSetInsertionPoint
	_XtTextReplace
	There were several name changes in the Athena widget set (in addition
to the header files moving into <X11/Xaw/>); these are mentioned in the R4
release notes. In this case, these functions are not really Xt functions but
are part of the Xaw text widget and so have been renamed from Xt* to Xaw*.
Subject: 112)  TOPIC: PROGRAMMING PROBLEMS AND PUZZLES
Subject: 113)  Why doesn't my program get the keystrokes I select for (sic)?
	The window manager controls how the input focus is transferred from one
window to another.  In order to get keystrokes, your program must ask the
window manager for the input focus.  To do this, you must set up what are
called "hints" for the window manager.  If your applications is Xlib-based, you
can use something like the following:
        XWMHints wmhints;
        wmhints.flags = InputHint;
        wmhints.input = True;
        XSetWMHints(dpy, window, &wmhints)
If your application is based on the Xt Intrinsics, you can set the XtNinput 
resource to be True (as you probably want to in any case); if you don't have
source, you can start up the application with the resource '*input:True'.
Certain window managers, notably dxwm and olwm, are very picky about having 
this done. 
	If you are using Sun's OpenWindows olwm, you can also add this resource
to your defaults file to use clients that aren't ICCCM-compliant.
	OpenWindows.FocusLenience:       true
[mostly courtesy Dave Lemke of NCD and Stuart Marks of Sun]
Subject: 114)  How do I figure out what window manager is running?
	You can't reliably tell; whatever mechanism you could use could be
spoofed in any case. 
	For most cases, you shouldn't care which window manager is running, so 
long as you do things in an ICCCM-conformant manner. There are some cases in 
which particular window managers are known to do things wrong; checking for
particular hints placed on the window by the window manager so that you can 
sidestep the problem may be appropriate in these cases. Alternatively, it may 
be appropriate to determine which window manager is running in order to take
advantage of specific *added* features (such as olwm's push-pin menus) in order
to give your program *added* functionality. Beware of usurping the window 
manager's functions by providing that functionality even when it is missing;
this surely leads to future compatibility problems.
Subject: 115)  Is there a skeleton X program available?
	There is no general framework such as the TransSkel program for the 
Macintosh which handles lots of the odds and ends and overhead of development 
under a window system and which can be used as a platform for additional 
development. In X, the problem is typically solved by using an interactive 
application builder tool or by using cut&paste on existing X applications. Good
applications which you might look to manipulate when you want to "test just 
this one little thing" include contrib/clients/xskel, a simple R4 program that 
puts up a window and allows sketching in it and offers a starting point for
quick hacks, the Xaw examples in the examples/ directory in the R3 and R4 
distributions, and the Xlib "Hello World" example in the R3 doc/HelloWorld and 
R4 doc/tutorials/HelloWorld; an updated version of this program which uses R4 
Xlib calls and current ICCCM conventions was posted in 2/90 to comp.windows.x  
by Glenn Widener of Tektronix. 	[3/90]
	In addition, a sample Xt program (for Xaw or Xm) by Rainer Klute 
showing how to open multiple displays and how to catch a broken display 
connection is available on export.lcs.mit.edu in contrib/mdisp.tar.Z. [4/92]
Subject: 116)  Why does XtGetValues not work for me (sic)?
	The XtGetValues interface for retrieving resources from a widget is
sensitive to the type of variable. Your code may be doing something like this:
	Arg args[3];
	int i;
	int sensitive;		/* oops; wrong data type */
	i=0;
	XtSetArg (args[i], XtNsensitive, &sensitive); i++;
	XtGetValues(widget, args, i );
But XtNsensitive is a Boolean, which on most machines is a single byte; 
declaring the variable "sensitive" as Boolean works properly. This problem 
comes up often when using particular toolkits that redefine the Xt types 
Dimension and Position; code that assumes they are int will have similar 
problems if those types are actually short. In general: you are safe if you
use the actual type of the resource, as it appears in the widget's man page.
Subject: 117)  Why don't XtConfigureWidget/XtResizeWidget/XtMoveWidget work?
	You're probably trying to use these functions from application code.
They should be used only internally to widgets; these functions are for a 
parent widget to change the geometry of its children. Other promising 
functions, XtMakeGeometryRequest() and XtMakeResizeRequest(), are also for use 
only by widgets, in this case by a child to request a change from its parent.
	The only way for your application to request a geometry change for a
widget is to issue an XtSetValues call setting some of the geometry resources.
Although this will result in the widget-internal functions' being called, your
application code must use the standard XtSetValues interface or risk the 
widgets' data becoming corrupted.
	[The Xlib calls XMoveWindow() and XResizeWindow() should similarly be 
avoided; they shouldn't be used to change XtNx, XtNy, XtNwidth, or XtNheight.]
Subject: 118)  Why isn't there an XtReparentWidget call like XReparentWindow?
	Although there are various details of the current implementation of
the Xt internals which make reparenting difficult, the major reason that no
such call exists is that it remains undefined what the set of resources for
the "new" widget should be. Resources are typically set based on the location
in the instance hierarchy; what resources should change if the instance moves?
What should happen to the widget's children? And by the time such semantics are
defined, there would probably be little advantage over destroying the old 
widget and creating a new widget in the correct location with the desired 
resources, as setting the resources correctly is the majority of work in 
creating a new widget.
	Note that reparenting is possible in the OI toolkit.
David B. Lewis 					faq%craft@uunet.uu.net
		"Just the FAQs, ma'am." -- Joe Friday 
David B. Lewis		Temporarily at but not speaking for Visual, Inc.
day: dbl@visual.com	evening: david%craft@uunet.uu.net
