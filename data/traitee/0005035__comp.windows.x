Archive-name: x-faq/part2
Last-modified: 1993/04/04
Subject:  24)! How do I make a screendump or print my application?
	The xwd client in the X11 distributions can be used to select a window 
or the background. It produces an XWD-format file of the image of that window. 
The file can be post-processed into something useful or printed with the xpr 
client and your local printing mechanism. You can use this command:
		csh% sleep 10; xwd -root > output.xwd &
and then spend 10 seconds or so setting up your screen; the entire current
display will be saved into the file output.xwd. Note that xwd also has an
undocumented (before R5) -id flag for specifying the window id on the 
command-line. [There are also unofficial patches on export to xwd for 
specifying the delay and the portion of the screen to capture.]
	Two publicly-available programs which allow interactive definition of 
arbitrary portions of the display and built-in delays are asnap and xgrabsc.
There are several versions of xgrabsc; version 2.2, available on export [8/92]
is the most recent.
	xsnap includes some asnap features and supersedes it; it also renders 
XPM output [version unknown]. It is available on export or avahi.inria.fr;
see xsnap-pl2.tar.Z.
	A screen-dump and merge/edit program combining features of xwd and xpr
is available from vernam.cs.uwm.edu as xdump1.0.tar.Z. Information: 
soft-eng@cs.uwm.edu.
	xprint, by Alberto Accomazzi (alberto@cfa.harvard.edu) is available
from cfa0 (128.103.40.1) in xprint.export-2.1.tar.Z.
	To post-process the xwd output of some of these tools, you can use xpr,
which is part of the X11 distribution. Also on several archives are xwd2ps
and XtoPS, which produce Encapsulated PostScript with trimmings suitable for 
use in presentations (see export.lcs.mit.edu:contrib/xwd2ps.tar.Z and
contrib/ImageMagick.tar.Z). Also useful is the PBMPLUS package on many archive
servers; and the Xim package contains Level 2 color PostScript output.
	The XV program can grab a portion of the X display, manipulate it, and
save it in one of the available formats. ImageMagick has similar capabilities.
	Also: 
	Bristol Technology (info@bristol.com, 203-438-6969) offers Xprinter 
2.0, an Xlib API for PostScript and PCL printers; a demo is on ftp.uu.net
in vendor/Bristol/Xprinter.
	ColorSoft 9619-459-8500) offers OPENprint package includes a screen-
capture facility, image-processing, and support for PostScript and 
non-PostScript printers.
	Some vendors' implementations of X (e.g. DECWindows and OpenWindows) 
include session managers or other desktop programs which include "print portion
of screen" or "take a snapshot" options. Some platforms also have tools which 
can be used to grab the frame-buffer directly; the Sun systems, for example, 
have a 'screendump' program which produces a Sun raster file. Some X terminals 
have local screen-dump utilities to write PostScript to a local serial printer.
	Some vendors' implementations of lpr (e.g. Sony) include direct 
support for printing xwd files, but you'll typically need some other package 
to massage the output into a useful format which you can get to the printer.
Subject:  25)  How do I make a color PostScript screendump of the X display?
	If you need color PostScript in particular, you can 
	- grab the screen-image using a program which can produce color 
PostScript, such as xgrabsc and xv 
	- grab the screen-image using xwd and post-process xwd into color PS.
You can do this using xwd2ps or the XtoPS program from the ImageMagick 
distribution. The PBMPLUS package is also good for this, as is the Xim package.
Subject:  26)  How do I make a screendump including the X cursor?
	This can't be done unless the X server has been extended. Consider 
instead a system-dependent mechanism for, e.g.,  capturing the frame-buffer.
Subject:  27)  How do I convert/view Mac/TIFF/GIF/Sun/PICT/img/FAX images in X?
	The likeliest program is an incarnation of Jef Poskanzer's useful++ 
Portable Bitmap Toolkit, which includes a number of programs for converting 
among various image formats. It includes support for many types of bitmaps, 
gray-scale images, and full-color images. PBMPLUS has been updated recently;
the most recent version [12/91] is on export in contrib/pbmplus10dec91.tar.Z.
	Another tool is San Diego Supercomputing Center's IMtools ('imconv' in 
particular), which packages the functionality of PBM into a single binary.
It's available anonymous ftp from sdsc.edu (132.249.20.22).
	Useful for viewing some image-formats is Jim Frost's xloadimage, a
version of which is in the R4 directory contrib/clients/xloadimage; there are 
later versions available, including contrib/xloadimage.3.03.tar.Z on export.  
Graeme Gill's updates to an earlier version of xloadimage are also on export; 
see xli.README and xli.tar.Z.uu; version 1.14 was released 2/93.
	xv (X Image Viewer), written by bradley@cis.upenn.edu (John Bradley), 
can read and display pictures in Sun Raster, PGM, PBM, PPM, X11 bitmap, TIFF, 
GIF and JPEG. It can manipulate on the images: adjust, color, intensity, 
contrast, aspect ratio, crop). It can save images in all of the aforementioned 
formats plus PostScript. It can grab a portion of the X display, manipulate on 
it, and save it in one of the available formats. The program was updated 5/92; 
see the file contrib/xv-2.21.tar.Z on export.lcs.mit.edu.
	The Fuzzy Pixmap Manipulation, by Michael Mauldin <mlm@nl.cs.cmu.edu>.
Conversion and manipulation package, similar to PBMPLUS.  Version 1.0 available
via FTP as nl.cs.cmu.edu:/usr/mlm/ftp/fbm.tar.Z, uunet.uu.net:pub/fbm.tar.Z, 
and ucsd.edu:graphics/fbm.tar.Z.
	The Img Software Set, by Paul Raveling <raveling@venera.isi.edu>, reads
and writes its own image format, displays on an X11 screen, and does some image
manipulations.  Version 1.3 is available via FTP on expo.lcs.mit.edu as
contrib/img_1.3.tar.Z, along with large collection of color images.
	The Utah RLE Toolkit is a conversion and manipulation package similar 
to PBMPLUS.  Available via FTP as cs.utah.edu:pub/urt-*, 
weedeater.math.yale.edu:pub/urt-*, and freebie.engin.umich.edu:pub/urt-*.
	Xim, The X Image Manipulator, by Philip Thompson, does essential 
interactive displaying, editing, filtering, and converting of images. There is 
a version in the X11R4 contrib area; but a more recent version (using R4 and 
Motif 1.1) is available from gis.mit.edu (18.80.1.118). Xim reads/writes gif, 
xwd, xbm, tiff, rle, xim, (writes level 2 eps) and other formats and also has a
library and command-line utilities for building your own applications.
	ImageMagick [2.3; 2/93] by cristy@dupont.com can be retrieved from 
export's contrib area. It is a collection of utilities to transform and display
images on any X server. The tool uses the MIFF format; filters to and from MIFF
from other popular formats (PPM, TIFF, GIF, SUN Raster, etc) are included.
	xtiff is a tool for viewing a TIFF file in an X window.  It was written
to handle as many different kinds of TIFF files as possible while remaining
simple, portable and efficient.  xtiff illustrates some common problems
with building pixmaps and using different visual classes.  It is distributed
as part of Sam Leffler's libtiff package and it is also available on
export.lcs.mit.edu, uunet.uu.net and comp.sources.x. [dbs@decwrl.dec.com,10/90]
xtiff 2.0 was announced in 4/91; it includes Xlib and Xt versions.
	A version of Lee Iverson's (leei@McRCIM.McGill.EDU) image-viewing tool
is available as contrib/vimage-0.9.3.tar.Z on export.lcs.mit.edu.  The package 
also includes an ImageViewPort widget and a FileDialog widget. [12/91;5/92] 
[some material from Larry Carroll (larryc@poe.jpl.nasa.gov), 5/91]
Subject:  28)  How can I change the titlebar of my xterm window?
	The solution involves sending an escape sequence to xterm which will
cause it to update the property which the window manager relies upon for the
string which appears in the window titlebar.
	A solution is as easy as typing this in an xterm running a shell:
		echo "ESC]2;TEXT^G"
where ESC is the escape key, TEXT is the string you wish to have displayed,
and ^G is a Control-G (the BEL character).
	Here is a more complicated csh alias which changes the titlebar to
the current working directory when you change directories:
		alias newcd 'cd \!*; echo -n ESC]2\;$cwd^G'
	The digit '2' in these strings indicates to xterm that it should 
change only the title of the window; to change both the title and the name 
used in the icon, use the digit '0' instead, and use '1' to change only the 
icon name.
	Note: another way to do this, which prevents an incorrect display of
the local directory if a modified `cd` is used in a subshell, is to wrap the
escape sequences into the PS1 prompt itself.
	Note: on an IBM RS/6000 is may be necessary to begin the sequence with
a ^V.
Subject:  29)  Where can I find the xterm control sequences?
The best source of such information is in your R5 sources in the file 
ctlseqs.ms; a PostScript version is in mit/hardcopy/clients/ctlseqs.PS.Z.
O'Reilly's Volume 3, the X User's Guide, includes an R5 version of the control 
sequences; the standard volume will be available 3/93, and a Motif version of 
the book is available now. The current (R4) guide includes an outdated version
of the control sequences. [1/93]
Other good sources of information include the R4 version of that document
and also the file in the R4 sources called mit/clients/xterm/ctlseq2.txt, a 
compilation put together by Skip Montanaro (GE CR&D) listing the VT100 
sequences. It dates from R3 but is fairly accurate.  A hardcopy version was 
published in the December 1989 XNextEvent (the XUG newsletter).
In a pinch, a VT100 manual will do.
[last updated 10/91]
Subject:  30)- Why does the R3 xterm, et al, fail against the R4 server?
Subject:  31)  How can I use characters above ASCII 127 in xterm ?
	In order to use special characters such as the o-umlaut, you need to 
"stty pass8" but also to use a charcell ISO8859 font, such as 
	XTerm*font: 	-*-*-medium-r-normal-*-*-130-*-*-c-*-iso8859-1
	XTerm*boldfont:	-*-*-bold-r-normal-*-*-130-*-*-c-*-iso8859-1
[The family is intentionally unspecified in this example.]
In addition, you may want to set this in your shell:
	setenv LC_CTYPE iso_8859_1
        For a given character above 127, you can determine the key to use with 
the Alt modifier by finding the equivalent character below 127 (try using
`man ascii`). For example, o-umlaut (v) is Alt-v and the section character (') 
is Alt-'. 
[thanks to Greg Holmberg (greg%thirdi@uunet.uu.net) and Stephen Gildea 
(gildea@expo.lcs.mit.edu); 6/92]
Subject:  32)  Why are my xterm menus so small?
	You are probably setting the geometry small accidentally. If you give 
a resource specification like this:
		xterm*geometry: 80x24
then you are asking for all widgets under xterm to have their geometry set to
80x24. For the main window, this is OK, as it uses characters for its size. 
But its popup menus don't; they are in pixels and show up small. To set only
the terminal widget to have the specified geometry, name it explicitly:
		xterm*VT100.geometry: 80x24
Subject:  33)  How can I print the current selection?
	You could paste it into an xterm after executing the lpr command. 
However, a program by Richard Hesketh (rlh2@ukc.ac.uk) specifically for 
manipulating the selection will help; e.g. 
	% xselection PRIMARY | lpr
finds the primary selection and prints it. This command can be placed in a 
window-manager menu or in shell-scripts. xselection also permits the setting of
the selection and other properties. A version is on export.
	Also available is ria.ccs.uwo.ca:pub/xget_selection.tar.Z, which can be
adapted to do this.
Subject:  34)  How does Xt use environment variables in loading resources?
	You can use several environment variables to control how resources are 
loaded for your Xt-based programs -- XFILESEARCHPATH, XUSERFILESEARCHPATH, and 
XAPPLRESDIR.  These environment variables control where Xt looks for 
application-defaults files as an application is initializing.  Xt loads at most
one app-defaults file from the path defined in XFILESEARCHPATH and another from
the path defined in XUSERFILESEARCHPATH.
	Set XFILESEARCHPATH if software is installed on your system in such a 
way that app-defaults files appear in several different directory hierarchies.
Suppose, for example, that you are running Sun's Open Windows, and you also 
have some R4 X applications installed in /usr/lib/X11/app-defaults. You could 
set a value like this for XFILESEARCHPATH, and it would cause Xt to look up 
app-defaults files in both /usr/lib/X11 and /usr/openwin/lib (or wherever your
OPENWINHOME is located):
	setenv XFILESEARCHPATH /usr/lib/X11/%T/%N:$OPENWINHOME/lib/%T/%N
The value of this environment variable is a colon-separated list of pathnames.  The pathnames contain replacement characters as follows (see 
XtResolvePathname()):
        %N      The value of the filename parameter, or the
                application's class name.
        %T      The value of the file "type".  In this case, the
                literal string "app-defaults"
        %C      customization resource (R5 only)
        %S      Suffix.  None for app-defaults.
        %L      Language, locale, and codeset (e.g. "ja_JP.EUC")
        %l      Language part of %L  (e.g. "ja")
        %t      The territory part of the display's language string
        %c      The codeset part of the display's language string
	Let's take apart the example.  Suppose the application's class name is 
"Myterm". Also, suppose Open Windows is installed in /usr/openwin. (Notice the 
example omits locale-specific lookup.)
	/usr/lib/X11/%T/%N        means /usr/lib/X11/app-defaults/Myterm
	$OPENWINHOME/lib/%T/%N    means /usr/openwin/lib/app-defaults/Myterm
	As the application initializes, Xt tries to open both of the above 
app-defaults files, in the order shown.  As soon as it finds one, it reads it 
and uses it, and stops looking for others.  The effect of this path is to 
search first in /usr/lib/X11, then in /usr/openwin.
	Let's consider another example. This time, let's set 
XUSERFILESEARCHPATH so it looks for the file Myterm.ad in the current working 
directory, then for Myterm in the directory ~/app-defaults.
	setenv XUSERFILESEARCHPATH ./%N.ad:$HOME/app-defaults/%N
	The first path in the list expands to ./Myterm.ad.  The second expands 
to $HOME/app-defaults/Myterm.  This is a convenient setting for debugging 
because it follows the Imake convention of naming the app-defaults file 
Myterm.ad in the application's source directory, so you can run the application
from the directory in which you are working and still have the resources loaded
properly.  NOTE: when looking for app-default files with XUSERFILESEARCHPATH,
for some  bizarre reason, neither the type nor file suffix is defined so %T and
%S are useless.
	With R5, there's another twist.  You may specify a customization 
resource value.  For example, you might run the "myterm" application like this:
	myterm -xrm "*customization: -color"
	If one of your pathname specifications had the value
"/usr/lib/X11/%T/%N%C" then the expanded pathname would be
"/usr/lib/X11/app-defaults/Myterm-color" because the %C substitution character 
takes on the value of the customization resource.
	The default XFILESEARCHPATH, compiled into Xt, is:
		/usr/lib/X11/%L/%T/%N%C:\  (R5)
		/usr/lib/X11/%l/%T/%N%C:\  (R5)
		/usr/lib/X11/%T/%N%C:\     (R5)
		/usr/lib/X11/%L/%T/%N:\
		/usr/lib/X11/%l/%T/%N:\
		/usr/lib/X11/%T/%N
	(Note: some sites replace /usr/lib/X11 with a ProjectRoot in
this batch of default settings.)
	The default XUSERFILESEARCHPATH, also compiled into Xt, is 
		<root>/%L/%N%C:\  (R5)
		<root>/%l/%N%C:\  (R5)
		<root>/%N%C:\     (R5)
		<root>/%L/%N:\
		<root>/%l/%N:\
		<root>/%N:
	<root> is either the value of XAPPLRESDIR or the user's home directory 
if XAPPLRESDIR is not set.  If you set XUSERFILESEARCHPATH to some value other 
than the default, Xt ignores XAPPLRESDIR altogether.
	Notice that the quick and dirty way of making your application find 
your app-defaults file in your current working directory is to set XAPPLRESDIR 
to ".", a single dot.  In R3, all this machinery worked differently; for R3 
compatibilty, many people set their XAPPLRESDIR value to "./", a dot followed 
by a slash.
[Thanks to Oliver Jones (oj@world.std.com); 2/93.]
Subject:  35)  How to I have the R4 xdm put a picture behind the log-in window?
The answer lies in changing xdm's xrdb resource in the xdm-config file to run a
program to change the background before loading the resources; for example, 
your /usr/lib/X11/xdm/xdm-config file may add the line 
	DisplayManager.0.authorize: false 
to permit unrestricted access to the display before log-in (beware!) and also 
	DisplayManager*xrdb:	/usr/lib/X11/xdm/new.xrdb
where that file does something (for all connections) along the lines of:
	#!/bin/sh
	#comes in with arguments: -display :0 -load /usr/lib/X11/xdm/Xresources
	/usr/bin/X11/xsetroot -display $2 -bitmap /usr/lib/X11/xdm/new.bitmap
	/usr/bin/X11/xrdb $*
Substitute xloadimage or xv for xsetroot, to taste.  Note that this is a 
general hack that can be used to invoke a console window or any other client.
[Thanks to Jay Bourland (jayb@cauchy.stanford.edu), 9/91]
Subject:  36)  Why isn't my PATH set when xdm runs my .xsession file?
	When xdm runs your .xsession it doesn't source your .cshrc or .login
files. You can set the path explicitly as you normally could for any SH script;
or you can place all environment-setting statements in a separate file and
source it from both the .xsession file and your shell configuration file; or,
if you set your PATH in your .cshrc file, the normal place, you can make your 
.xsession have PATH set simply by making it a csh script, i.e. by starting
your .xsession file off with "#!/bin/csh". 
	If this doesn't work, also try starting off with:
		#!/bin/sh
		# Reset path:
		PATH=`csh -c 'echo $PATH'` ; export PATH
Subject:  37)  How do I keep my $DISPLAY when I rlogin to another machine?
	There are several ways to avoid having to do a "setenv DISPLAY ..."
whenever you log in to another networked UNIX machine running X.
	One solution is to use the clients/xrsh on the R5 contrib tape.  It 
includes xrsh, a script to start an X application on remote machine, and
xrlogin, a script to start a local xterm running rlogin to a remote machine.
A more recent version is on export in xrsh-5.4.shar.
	One solution is to use the xrlogin program from der Mouse
(mouse@larry.mcrcim.mcgill.edu). You can ftp caveat-emptor versions from
132.206.1.1, in X/xrlogin.c and X/xrlogind.c. The program packages up $TERM and
$DISPLAY into a single string, which is stuffed into $TERM.  rlogin then 
propagates $TERM normally; your .cshrc on the remote machine should contain
		eval `xrlogind`
where xrlogind is a program that checks $TERM and if it is of the special 
format it recognizes, unpacks it and spits out setenv and unsetenv commands to 
recreate the environment variables. [11/90]
	In addition, if all you need to do is start a remote X process on 
another host, and you find
		rsh <HOST> -n /usr/bin/X11/xterm -display $DISPLAY 
too simple (DISPLAY must have your real hostname), then this version of xrsh 
can be used to start up remote X processes. The equivalent usage would be 
		xrsh <HOST> xterm
  #! /bin/sh
  # start an X11 process on another host
  # Date: 8 Dec 88 06:29:34 GMT
  # From: Chris Torek <chris@mimsy.umd.edu>
  # rsh $host -n "setenv DISPLAY $DISPLAY; exec $@ </dev/null >&/dev/null"
  # An improved version:
  # rXcmd (suggested by John Robinson, jr@bbn.com)
  #       (generalized for sh,ksh by Keith Boyer, keith@cis.ohio-state.edu)
  # but they put the rcmd in ()'s which left zombies again.  This
  # script combines the best of both.
  case $# in
  [01])  echo "Usage: $0 host x-cmd [args...]";;
  	case $SHELL in
  	*csh*)  host="$1"; shift
  		xhost "$host" > /dev/null
  		rsh "$host" -n \
  			"setenv TERM xterm; setenv DISPLAY `hostname`:0; \
  			exec $* </dev/null >& /dev/null" &
  		host="$1"; shift
  		xhost "$host" > /dev/null
  		rsh "$host" -n \
  			"TERM=xterm export TERM; \
  			DISPLAY=`hostname`:0 export DISPLAY; \
  			LD_LIBRARY_PATH=/usr/X11/lib export LD_LIBRARY_PATH; \
  			PATH=\$PATH:/usr/X11/bin:/usr/bin/X11:/usr/local/bin; \
			export PATH; \
  			exec $* < /dev/null > /dev/null 2>&1" &
  	esac
  esac
Subject:  38)  How can I design my own font?
	One way is to use the "bitmap" client or some other bitmap-editor (e.g.
Sun's icon-editor tool, post-processed with pbmplus) to design the individual 
characters and then to do some large amount of post-processing to concatenate 
them into the BDF format. See Ollie Jones's article in the November 91 X 
Journal for more information.
	The R3 contrib/ area (in fonts/utils/ and in clients/xtroff) contained 
a number of useful utilities, including some to convert between BDF font format
and a simple character format which can be edited with any text editor.
	An easier way is to use the "xfed" client to modify an existing font; a
version is on the R4 or R5 X11R5 contrib tape in contrib/clients/xfed. Xfed is 
available for anonymous ftp on ftp.Informatik.Uni-Dortmund.DE [129.217.64.63], 
possibly as file /pub/windows/X/Diverse-X11-Sourcen/xfed.tar.Z. It can produce
BDF-format fonts which can be compiled for a variety of X servers.
	The xfedor client from Group Bull permits creation of bitmaps, cursors,
XPM1 pixmaps, and fonts. Binaries for common machines are on avahi.inria.fr in
/pub; in addition, the sources (an old Xlib implementation) have been placed 
[5/91] in export:/contrib. 
	If you are a MetaFont user you can use "mftobdf" from the SeeTeX
distribution to convert PK, GF, and PXL fonts to BDF format; the distribution
is on ftp.cs.colorado.edu and on export.lcs.mit.edu.
	The GNU package fontutils-0.4.tar.Z on prep.ai.mit.edu includes xbfe,
a font editor, and a number of utilities for massaging font formats.
	The O'Reilly X Resource issue #2 contains an article on using these
tools to modify a font.
	Fonts can be resized with Hiroto Kagotani's bdfresize; a new version is
in ftp.cs.titech.ac.jp:/X11/contrib.
Subject:  39)  Why does adding a font to the server not work (sic)?
	After you have built the font using your system's font-compiler, 
installed it in some directory, and run `mkfontdir` or your system's equivalent
(e.g. bldfamily for OpenWindows) in that directory, be sure to use `xset +fp 
$dir` to add that full path-name to the server's font-path, *or* if the 
directory is already in the path, use `xset fp rehash` so that the new fonts in
that directory are actually found; it is this last step that you're probably 
leaving out. (You can also use `xset q` to make sure that that directory is in 
the path.)
	Sometimes your "xset +fp $dir" command fails with a BadValue error:
		X Error of failed request:BadValue
			(integer parameter out of range for operation)
		Major opcode of failed request:  51 (X_SetFontPath)
	This means the X server cannot find or read your font directory, or
that your directory does not look like a font directory to the server.  (The
mention of an "integer parameter" in the message is spurious.)
-- Is the font directory you're specifying readable from the SERVER's file
   system?  Remember, it's the server, not the client, which interprets your
   font directory.  Trouble in this area is especially likely when you issue an
   xset command with shell metacharacters in it (e.g. "xset +fp ~/myfonts") and
   the server is an X terminal or managed by xdm.
-- Is the directory really a font directory?  If you're running an MIT server
   (or most varieties of vendor servers) look in the directory for the file
   "fonts.dir".  If you can't find that file, run mkfontdir(1).  (If you're
   running OpenWindows, look for the file "Families.list".  If you can't find
   it, run bldfamily(1).)
-- If you're in a site where some people run X11Rn servers and others run a
   proprietary server with nonstandard font formats (OpenWindows, for
   example), make sure the font directory is right for the server you're using.
   Hint: if the directory contains .pcf and/or .snf files, it won't work for
   Open Windows.  If the directory contains .ff and/or .fb files, it won't work
   for X11Rn.
[thanks to der Mouse (mouse@larry.mcrcim.mcgill.edu) and to Oliver Jones 
(oj@pictel.com); 7/92 ]
Subject:  40)  How do I convert a ".snf" font back to ".bdf" font?
	A tool called "snftobdf 1.4" is part of the bdftools package, which is 
available from export.lcs.mit.edu:contrib/bdftools.tar.Z and from 
crl.nmsu.edu:pub/misc/bdftools.tar.Z.  [2/91]
Subject:  41)  What is a general method of getting a font in usable format?
	der Mouse's getbdf is one solution; it connects to a server and 
produces a .BDF file for any font the server is willing to let it.  It can be 
used as an anything-to-BDF converter, but requires access to a server that can 
understand the font file, thus is both more and less powerful than other tools 
such as snftobdf. getbdf is on 132.206.1.1 in X/getbdf.c or available via mail 
from mouse@larry.McRCIM.McGill.EDU. [5/91]
	In addition, the R5 program "fstobdf" can produce bdf for any font that
the R5 server has access to.
Subject:  42)  How do I use DECwindows fonts on my non-DECwindows server?
	The DECwindows fonts typically don't exist on a non-DEC installation,
but rewrite rules can be used to alias fonts used by DECwindows applications to
standard MIT fonts of similar characteristics and size. Pick up the file 
contrib/DECwindows_on_X11R4_font.aliases from export.lcs.mit.edu; this file is 
for a standard MIT R4 server.  It can also serve as a starting point for 
creating a similar aliases file for the Open Windows server or other servers 
which do not use the MIT font scheme.
Subject:  43)  How do I add ".bdf" fonts to my DECwindows server?
	The format of fonts preferred by DEC's X server is the ".pcf" format.
You can produce this compiled format from the .bdf format by using DEC's dxfc
font-compiler. Note that the DEC servers can also use raw .bdf fonts, with a
performance hit.
Subject:  44)! How can I set backgroundPixmap in a defaults file? (What is XPM?)
I want to be able to do something like this:
	xclock*backgroundPixmap:      /usr/include/X11/bitmaps/rootweave
	You can't do this. The backgroundPixmap resource is a pixmap of the 
same depth as the screen, not a bitmap (which is a pixmap of depth 1). Because 
of this, writing a generic String to Pixmap converter is impossible, since 
there is no accepted convention for a file format for pixmaps. Therefore, 
neither the X Toolkit or the Athena widget set define a String to Pixmap 
converter, because there is no converter you cannot specify this value as a 
resource.  The Athena widget set does define a String to Bitmap converter for 
use in many of its widgets, however.
[courtesy Chris D. Peterson (now kit@ics.com), 4/90]
However:
	A specific converter which encapsulates much of the functionality of 
the xloadimage package by Jim Frost was posted 12/90 by Sebastian Wangnick 
(basti@unido.informatik.uni-dortmund.de); it permits loading of a number of 
image formats as a pixmap.
	The leading general-purpose format for pixmaps is the XPM format used 
by Groupe Bull in several of its programs, including the GWM window manager, by
AT&T in its olpixmap editor, and by ICS in its interface builder. XPM 
distribution, available on export as contrib/xpm.tar.Z, includes read/write 
routines which can easily be adapted to converters by new widgets which want to
allow specification of pixmap resources in the above manner.  See information
on the xpm-talk mailing list above. XPM 3.0f was announced in 3/93 and is
available from export.lcs.mit.edu and avahi.inria.fr; an older version is on 
the R5 contrib tape. [A set of XPM icons collected by Anthony Thyssen 
(anthony@kurango.cit.gu.edu.au) is on export in contrib/AIcons.]
Subject:  45)  Why can't I override translations? Only the first item works.
	You probably have an extra space after the specification of the first 
item, like this:
	basic*text.translations:  #override \
	Ctrl<Key>a:    beginning-of-line() \n\ 	
	Ctrl<Key>e:    end-of-line()
					      ^ extra space
The newline after that space is ending the translation definition.
[Thanks to Timothy J. Horton, 5/91]
Subject:  46)  How can I have xclock or oclock show different timezones?
	One solution is xchron, in Volume 6 of comp.sources.x, which can show
the time for timezones other than the local one. 
	Alternatively, you can probably set the timezone in the shell from
which you invoke the xclock or oclock, or use a script similar to this:
	#!/bin/sh
	TZ=PST8PDT xclock -name "San_Luis_Obispo_CA" 2> /dev/null &
	TZ=EST5EDT xclock -name "King_Of_Prussia_PA" 2> /dev/null &
Subject:  47)  I have xmh, but it doesn't work. Where can I get MH?
	The xmh mail-reader requires the Rand MH mail/message handling system,
which is not part of the UNIX software distribution for many machines. A list 
of various ftp, uucp, e-mail and US-mail sites for both xmh and MH is given in 
the monthly MH FAQ; one source is ics.uci.edu in the file pub/mh/mh-6.7.tar.Z.
If you do not receive the comp.mail.mh newsgroup or the MH-users mailing list, 
you can request a copy of the FAQ, which also includes a section on xmh, 
by sending mail to mail-server@pit-manager.mit.edu containing the request
"send usenet/news.answers/mh-faq".
Subject:  48)  Why am I suddenly unable to connect to my Sun X server?
After a seemingly random amount of time after the X server has been started, no
other clients are able to connect to it.
	The default cron cleanup jobs supplied by Sun (for 4.0.3, at least)
delete "old" (unreferenced) files from /tmp -- including /tmp/.X11-unix, which 
contains the socket descriptor used by X. The solution is to add "! -type s" to
the find exclusion in the cron job.
Subject:  49)  Why don't the R5 PEX demos work on my mono screen?
The R5 sample server implementation works only on color screens, sorry.
Subject:  50)! How do I get my Sun Type-[45] keyboard fully supported by Xsun?
Many users wants the Num Lock key to light the Num Lock LED and have the 
appropriate effect on the numeric keypad. The Xsun server as distributed by MIT
doesn't do this but there are two different patches available.
The first patch is written by Jonathan Lemon and fixes the Num Lock related 
problems. It is available from export.lcs.mit.edu in the file
contrib/Xsun-R5.numlock_patch.Z .
The second is written by Martin Forssen and fixes the Num Lock and Compose keys
and adds support for the different national keyboard layouts for Type-4 and 
Type-5 keyboards. This patch is available from export.lcs.mit.edu in
contrib/sunkbd1216-0314.tar.Z or via email from maf@dtek.chalmers.se.
[thanks to Martin Forssen (maf@dtek.chalmers.se or maf@math.chalmers.se), 8/92]
A set of patches by William Bailey (dbgwab@arco.com) was posted to newsgroups
11/92 to provide support for the Type-5 keyboard.
Subject:  51)  How do I report bugs in X?
	Generally, report bugs you find to the organization that supplied you
with the X Window System. If you received the R5 source distribution directly 
from MIT, please read the file mit/bug-report for instructions. [Look in
mit/doc/bugs/bug-report in R4.]
[Thanks to Stephen Gildea <gildea@expo.lcs.mit.edu>, 5/91; 12/91]
Subject:  52)  Why do I get "Warning: Widget class version mismatch"?
	This error, which typically goes on to say, "widget 11004 vs. 
intrinsics 11003" indicates that the header files you included when building 
your program didn't match the header files that the Xt library you're linking 
against was built with; check your -I include path and -L link-path to be sure.
	However, the problem also occurs when linking against a version of the 
X11R4 Xt library before patch 10; the version number was wrong. Some Sun OW
systems, in particular, were shipped with the flawed version of the library, 
and applications which link against the library typically give the warnings you
have seen.
Subject:  53)  Where can I find a dictionary server for xwebster?
	Webster's still owns the copyright to the on-line copies of Webster's
Dictionary which are found at various (university) sites. After it became aware
that these sites were then acting as servers for other sites running xwebster 
and gnuemacs-webster, it asked that server sites close off external access.
	[The NeXT machine apparently is also licensed to have the dictionary. A
Webster daemon for NeXT machines is available from iuvax.cs.indiana.edu 
(129.79.254.192) in "pub/webster/NeXT-2.0".]
	Unless you want to get a legal on-line copy yourself or can find a site
which can grant you access, you are probably out of luck. 
	However, if you are a legitimate site, you'll want to pick up the
latest xwebster, as-is on export:contrib/xwebster.tar.Z [10/91]; the file 
xwebster.README includes discussions of the availability, illegality, and 
non-availability of dictionary servers. 
[courtesy steve@UMIACS.UMD.EDU (Steve Miller) and mayer@hplabs.hp.com (Niels 
Mayer) 11/90]
Subject:  54)  TOPIC: OBTAINING X AND RELATED SOFTWARE AND HARDWARE
Subject:  55)  Is X public-domain software?
	No. The X software is copyrighted by various institutions and is not 
"public domain", which has a specific legal meaning. However, the X 
distribution is available for free and can be redistributed without fee.
	Contributed software, though, may be placed in the public domain by
individual authors.
Subject:  56)  How compatible are X11R3, R4, and R5? What changes are there?
The Release Notes for each MIT release of X11 specify the changes from the 
previous release.  The X Consortium tries very hard to maintain compatibility 
across releases.  In the few places where incompatible changes were necessary, 
details are given in the Release Notes.  Each X11 distribution site on the 
network also offers the Release Notes that go with the release they offer; the 
file typically can be found at the top of the distribution tree.
[Stephen Gildea, 1/92]
The comp.windows.x.intrinsics FAQ-Xt lists Xt differences among these versions.
Subject:  57)! Where can I get X11R5 (source and/or binaries)?
Information about MIT's distribution of the sources on 6250bpi and QIC-24 tape 
and its distribution of hardcopy of the documents is available from 
Software Center, Technology Licensing Office, Massachusetts Institute of 
Technology, 28 Carleton Street, Room E32-300, Cambridge MA 02142-1324,
phone: 617-258-8330.
You will need about 100Mb of disk space to hold all of Core and 140MB to hold
the Contrib software donated by individuals and companies. 
PLEASE use a site that is close to you in the network.
Note that the RELEASE notes are generally available separately in the same
directory; the notes list changes from previous versions of X and offer a
guide to the distribution.
			  North America anonymous FTP:
California	gatekeeper.dec.com		pub/X11/R5
California	soda.berkeley.edu		pub/X11R5
Indiana		mordred.cs.purdue.edu		pub/X11/R5
Maryland	ftp.brl.mil			pub/X11R5
		(good for MILNET sites)
Massachusetts	crl.dec.com			pub/X11/R5
Massachusetts	export.lcs.mit.edu		pub/R5
		(crl.dec.com is better)
Michigan	merit.edu			pub/X11R5
Missouri	wuarchive.wustl.edu		packages/X11R5
Montana		ftp.cs.montana.edu		pub/X.V11R5
New Mexico	pprg.eece.unm.edu		pub/dist/X11R5
New York	azure.acsu.buffalo.edu		pub/X11R5
North Carolina	cs.duke.edu			dist/sources/X11R5
Ohio		ftp.cis.ohio-state.edu		pub/X.V11R5
Ontario		ftp.cs.utoronto.ca		pub/X11R5
Washington DC	x11r5-a.uu.net			X/R5
Washington DC	x11r5-b.uu.net			X/R5
		   Europe/Middle East/Australia anonymous FTP:
Australia	munnari.oz.au			X.V11/R5
Denmark		freja.diku.dk			pub/X11R5
United Kingdom	src.doc.ic.ac.uk		graphics/X.V11R5
		hpb.mcc.ac.uk			pub/X11r5
Finland		nic.funet.fi			pub/X11/R5
France		nuri.inria.fr			X/X11R5
Germany		ftp.germany.eu.net		pub/X11/X11R5
Israel		cs.huji.ac.il			pub/X11R5
Italy		ghost.sm.dsi.unimi.it		pub/X11R5
Netherlands	archive.eu.net			windows/X/R5
Norway		ugle.unit.no			pub/X11R5
Norway		nac.no				pub/X11R5
Switzerland	nic.switch.ch			software/X11R5
			 Japan anonymous FTP:
Kanagawa	sh.wide.ad.jp			X11R5
Kwansai		ftp.ics.osaka-u.ac.jp		X11R5
Kyushu		wnoc-fuk.wide.ad.jp		X11R5
TISN		utsun.s.u-tokyo.ac.jp		X11R5
Tokyo		kerr.iwanami.co.jp		X11R5
Tokyo		scslwide.sony.co.jp		pub/X11R5
uunet		for UUNET customers		~/X/R5
decwrl		existing neighbors only		~/pub/X11/R5
osu-cis						~/X.V11R5
		(not online until ~ 9 Sept)
utai		existing neighbors only		~/ftp/pub/X11R5
hp4nl		Netherlands only		~uucp/pub/windows/X/R5
Missouri	wuarchive.wustl.edu		/archive/packages/X11R5
		128.252.135.4			mount point: /archive
Pennsylvania	/afs/grand.central.org/pub/X11R5
United Kingdom	uk.ac.ic.doc.src		<X.V11R5>
		user "guest"
			      anon FTAM:
United Kingdom	000005102000 (Janet)		X.V11R5
		146.169.3.7 (Internet)
			       ACSNet:
Australia	munnari.oz (fetchfile)		X.V11/R5
		Please fetch only one file
		at a time, after checking
		that a copy is not available
		at a closer site.
[9/2/91; updated for contrib 10/91]
Anyone in Europe can get a copy of the MIT X.V11R5 distribution, including
the core and contributed software and all official patches, free of charge.
The only requirement is to agree to return the tapes, or equivalent new tapes.
Only QIC and TK format cartridges can be provided.  Contact: Jamie Watson,
Adasoft AG, Nesslerenweg 104, 3084 Wabern, Switzerland.
Tel: +41 31 961.35.70 or +41 62 61.41.21; Fax: +41 62 61.41.30; jw@adasoft.ch.
UK sites can obtain X11 through the UKUUG Software Distribution Service, from 
the Department of Computing, Imperial College, London, in several tape formats.
You may also obtain the source via Janet (and therefore PSS) using Niftp (Host:
uk.ac.ic.doc.src Name: guest Password: your_email_address).  Queries should be 
directed to Lee McLoughlin, 071-589-5111#5037, or to info-server@doc.ic.ac.uk 
or ukuug-soft@uk.ac.ic.doc (send a Subject line of "wanted". Also offered are 
copies of comp.sources.x, the export.lcs.mit.edu contrib and doc areas and most
other announced freely distributable packages. 
X11R5 and X11R4 source along with X11R5 contrib code, prebuilt X binaries for
major platforms, and source code examples from O'Reilly's books is available on
an ISO-9660-format CD-ROM from O'Reilly & Associates. [as of 3/92].
X11R5 source is available on ISO-9660-format CD-ROM for members of the Japan
Unix Society from Hiroaki Obata, obata@jrd.dec.com.
X11R5 source along with GNU source, the comp.sources.x archives, and SPARC
binaries is available on an ISO-9660-format CD-ROM from PDQ Software,
510-947-5996 (or Robert A. Bruce, rab@sprite.Berkeley.EDU).
X11R5 source is available from Automata Design Associates, +1 215-646-4894.
Various users' groups (e.g. SUG) offer X sources cheaply, typically on CD-ROM.
Source for the Andrew User Interface System 5.1 and binaries for common systems
are available on CD-ROM. Information: info-andrew-requests@andrew.cmu.edu,
412-268-6710, fax 412-621-8081.
Binaries for X11R5, with shared libX11 and libXmu, for A/UX 2.0.1 are now 
available from wuarchive.wustl.edu:/archive/systems/aux/X11R5.  Patches for 
X11R5 compiled with gcc (but not shared libraries) are also available.
[John L. Coolidge (coolidge@cs.uiuc.edu, 10/91)]
Binaries by Rich Kaul (kaul@ee.eng.ohio-state.edu) for the Sun386i running 
SunOS 4.0.2 are available on dsinc.dsi.com (please only after-hours USA EST).
Binaries for the Sun386i are available from compaq.com (131.168.249.254) in
pub/sun-386i/sources and from vernam.cs.uwm.edu (129.89.9.117).
A binary tree for the Next by Douglas Scott (doug@foxtrot.ccmrc.ucsb.edu) is on
foxtrot.ccmrc.ucsb.edu; it is missing the server, though.
Binaries for the Sun386i are in vernam.cs.uwm.edu:/sun386i.
Binaries for the HP-PA are on hpcvaaz.cv.hp.com (15.255.72.15).
Source and binaries for HP-UX 8.*/9.0(S300/400/700/800) and Domain 10.4 (68K,
DN 10K) are available through the Interworks Users Group; contact Carol Relph
at 508-436-5046, fax 508-256-7169, or relph_c@apollo.hp.com.
Patches to X11R5 for Solaris 2.1 by Casper H.S. Dik (casper@fwi.uva.nl) et al
are on export in contrib/{R5.SunOS5.patch.tar.Z,R5.SunOS5.patch.README}.
Patches to X11R5 for the Sun Type 5 keyboard and the keyboard NumLock are 
available from William Bailey (dbgwab@arco.com).
Also:
Binaries are available from Unipalm (+44 954 211797, xtech@unipalm.co.uk), 
probably for the Sun platforms. 
David B. Lewis 					faq%craft@uunet.uu.net
		"Just the FAQs, ma'am." -- Joe Friday 
David B. Lewis		Temporarily at but not speaking for Visual, Inc.
day: dbl@visual.com	evening: david%craft@uunet.uu.net
