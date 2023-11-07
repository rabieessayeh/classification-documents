[[ I posted this a few weeks back, but all I got back was an error
   message "pnews: /dev/null: Permission denied".  Yep, /dev/null
   had a mode of 600.  (Arrghhh!!)  ]]
With renewed interest in "setting the DISPLAY variable", etc.. I
thought I would post my contribution.
This Perl script is my solution.  It trys to be intelligent about
what it's doing so that you should be able to type "rx host.domain.etc",
and get a xterm running on "host.domain.etc", with all the difficult
stuff taken care of.
In theory, this program can do *everything* you ever wanted to do
when you wanted to run a remote command in the background - it
doesn't even need to be an X program.  Try a "rx big-machine make"
for instance, for a backgrounded make on the remote "big-machine".
For more details and a full list of features read the README file,
about 20 lines below...  All comments welcome.
Duncan.
#! /bin/sh
# This is a shell archive.  Remove anything before this line, then unpack
# it by saving it into a file and typing "sh file".  To overwrite existing
# files, type "sh file -c".  You can also feed this as standard input via
# unshar, or by typing "sh <file", e.g..  If this archive is complete, you
# will see the following message at the end:
#		"End of archive 1 (of 1)."
# Contents:  README Imakefile MANIFEST Makefile rx.man rx.pl
# Wrapped by sinclair@dcs.gla.ac.uk on Thu Apr  8 18:47:48 1993
PATH=/bin:/usr/bin:/usr/ucb ; export PATH
if test -f 'README' -a "${1}" != "-c" ; then 
  echo shar: Will not clobber existing file \"'README'\"
else
echo shar: Extracting \"'README'\" \(1442 characters\)
sed "s/^X//" >'README' <<'END_OF_FILE'
X   Glasgow RX - remote execution of X programs.  Version 3.1.7
XCopyright 1992 Duncan Sinclair <sinclair@dcs.gla.ac.uk>
XTrivial to install, but there's an Imakefile to make it even more trivial.
XThe perl script needs some customisation before it is installed, just
Xedit the "rx.pl" file, and read the comments.  Once you've done
Xthis you can "xmkmf", then "make install install.man".
X*) Does the right thing for off-site remote execution.  Including
X   setting up $DISPLAY to include domain names, and passing
X   magic cookies, or doing the "xhost" stuff.
X*) Allow different remote user name.  (rx -l user host ...)
X*) Smart quoting of arguments - makes passing wild-cards easy.
X*) Custom command execution - link it to "remacs" to get a remote
X   emacs command.
X*) Automatic xterm options - names the xterm according to hostname,
X   and turns on "login shell".
X*) Default command is xterm.
X*) Propagates X-ish env. variables to remote session - user may
X   extend the list of variables to pass.
X*) Special handling for bourne shell users.
X*) Tries to do remote execution from same directory as local.
X   That is, it propagates $PWD, in an intelligent manner.
X*) Logs errors in a file.
X*) Overall Intelligence (TM) - makes reasoned decisions about what
X   you are trying to do, and tries to "do the right thing".
X*) Written in Perl, for portability and hackability.
XFor more info, read the man page or the source.
if test 1442 -ne `wc -c <'README'`; then
    echo shar: \"'README'\" unpacked with wrong size!
fi
# end of 'README'
fi
if test -f 'Imakefile' -a "${1}" != "-c" ; then 
  echo shar: Will not clobber existing file \"'Imakefile'\"
else
echo shar: Extracting \"'Imakefile'\" \(370 characters\)
sed "s/^X//" >'Imakefile' <<'END_OF_FILE'
X# Glasgow RX Imakefile.
Xall:: $(PROGRAMS)
Xinstall:: safe
XInstallNamedProg(rx.pl,rx,$(BINDIR))
XInstallManPage(rx,$(MANDIR))
Xinstall::
X	$(RM) $(BINDIR)/rxterm
X	$(LN) $(BINDIR)/rx $(BINDIR)/rxterm
Xsafe:
X	@grep -s 'debug = 0' rx.pl || false
Xshar: safe
X	makekit -m -p
X	@-perl -pi -e "s/sinclair@dcs.gla.ac.uk/sinclair@dcs.gla.ac.uk/;" Part*
if test 370 -ne `wc -c <'Imakefile'`; then
    echo shar: \"'Imakefile'\" unpacked with wrong size!
fi
# end of 'Imakefile'
fi
if test -f 'MANIFEST' -a "${1}" != "-c" ; then 
  echo shar: Will not clobber existing file \"'MANIFEST'\"
else
echo shar: Extracting \"'MANIFEST'\" \(313 characters\)
sed "s/^X//" >'MANIFEST' <<'END_OF_FILE'
X   File Name		Archive #	Description
X README                     1	Read me first
X Imakefile                  1	
X MANIFEST                   1	This shipping list
X Makefile                   1	
X rx.man                     1	
if test 313 -ne `wc -c <'MANIFEST'`; then
    echo shar: \"'MANIFEST'\" unpacked with wrong size!
fi
# end of 'MANIFEST'
fi
if test -f 'Makefile' -a "${1}" != "-c" ; then 
  echo shar: Will not clobber existing file \"'Makefile'\"
else
echo shar: Extracting \"'Makefile'\" \(10172 characters\)
sed "s/^X//" >'Makefile' <<'END_OF_FILE'
X# Makefile generated by imake - do not edit!
X# $XConsortium: imake.c,v 1.65 91/07/25 17:50:17 rws Exp $
X# The cpp used on this machine replaces all newlines and multiple tabs and
X# spaces in a macro expansion with a single space.  Imake tries to compensate
X# for this, but is not always successful.
X# Makefile generated from "Imake.tmpl" and </tmp/IIf.a04196>
X# $XConsortium: Imake.tmpl,v 1.139 91/09/16 08:52:48 rws Exp $
X# Platform-specific parameters may be set in the appropriate <vendor>.cf
X# configuration files.  Site-specific parameters should be set in the file
X# site.def.  Full rebuilds are recommended if any parameters are changed.
X# If your C preprocessor does not define any unique symbols, you will need
X# to set BOOTSTRAPCFLAGS when rebuilding imake (usually when doing
X# "make World" the first time).
X# site-specific configuration parameters that need to come before
X# the platform-specific parameters - edit site.def to change
X# site:  $XConsortium: site.def,v 1.2 91/07/30 20:26:44 rws Exp $
X# platform-specific configuration parameters - edit sun.cf to change
X# platform:  $XConsortium: sun.cf,v 1.72.1.1 92/03/18 13:13:37 rws Exp $
X# operating system:  SunOS 4.1.3
X# $XConsortium: sunLib.rules,v 1.7 91/12/20 11:19:47 rws Exp $
X# site-specific configuration parameters that go after
X# the platform-specific parameters - edit site.def to change
X# site:  $XConsortium: site.def,v 1.2 91/07/30 20:26:44 rws Exp $
X            SHELL = /bin/sh
X               AR = ar cq
X               CC = gcc -fpcc-struct-return
X               AS = as
X         COMPRESS = compress
X              CPP = /lib/cpp $(STD_CPP_DEFINES)
X    PREPROCESSCMD = gcc -fpcc-struct-return -E $(STD_CPP_DEFINES)
X          INSTALL = install
X             LINT = lint
X         LINTOPTS = -axz
X             MAKE = make
X           RANLIB = ranlib
X            TROFF = psroff
X              EQN = eqn
X             TAGS = ctags
X    INSTKMEMFLAGS = -g kmem -m 2755
X      PROJECTROOT = /usr/X11
X        MACROFILE = sun.cf
X           RM_CMD = $(RM) *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut
X        IMAKE_CMD = $(IMAKE) -DUseInstalled -I$(IRULESRC) $(IMAKE_DEFINES)
X     ICONFIGFILES = $(IRULESRC)/Imake.tmpl $(IRULESRC)/Imake.rules \
X			$(IRULESRC)/Project.tmpl $(IRULESRC)/site.def \
X# X Window System Build Parameters
X# $XConsortium: Project.tmpl,v 1.138.1.1 92/11/11 09:49:19 rws Exp $
X# X Window System make variables; this need to be coordinated with rules
X        USRLIBDIR = /usr/X11/lib
X           BINDIR = /usr/X11/local/bin
X          INCROOT = /usr/X11/include
X           ADMDIR = /usr/adm
X        CONFIGDIR = $(LIBDIR)/config
X       LINTLIBDIR = $(USRLIBDIR)/lint
X          FONTDIR = $(LIBDIR)/fonts
X         XINITDIR = $(LIBDIR)/xinit
X          MANPATH = /usr/X11/man
X    MANSOURCEPATH = $(MANPATH)/man
X      XAPPLOADDIR = $(LIBDIR)/app-defaults
X            IMAKE = imake
X           DEPEND = makedepend
X            FONTC = bdftopcf
X        MKFONTDIR = mkfontdir
X        MKDIRHIER = /bin/sh $(BINDIR)/mkdirhier
X        CONFIGSRC = $(TOP)/config
X       DOCUTILSRC = $(TOP)/doc/util
X        CLIENTSRC = $(TOP)/clients
X          DEMOSRC = $(TOP)/demos
X           LIBSRC = $(TOP)/lib
X          FONTSRC = $(TOP)/fonts
X        SERVERSRC = $(TOP)/server
X          UTILSRC = $(TOP)/util
X        SCRIPTSRC = $(UTILSRC)/scripts
X       EXAMPLESRC = $(TOP)/examples
X       CONTRIBSRC = $(TOP)/../contrib
X           DOCSRC = $(TOP)/doc
X        DEPENDSRC = $(UTILSRC)/makedepend
X         XAUTHSRC = $(LIBSRC)/Xau
X           XMUSRC = $(LIBSRC)/Xmu
X       AWIDGETSRC = $(LIBSRC)/Xaw
X       OLDXLIBSRC = $(LIBSRC)/oldX
X      BDFTOSNFSRC = $(FONTSRC)/bdftosnf
X      BDFTOSNFSRC = $(FONTSRC)/clients/bdftosnf
X      BDFTOPCFSRC = $(FONTSRC)/clients/bdftopcf
X     MKFONTDIRSRC = $(FONTSRC)/clients/mkfontdir
X         FSLIBSRC = $(FONTSRC)/lib/fs
X    FONTSERVERSRC = $(FONTSRC)/server
X     EXTENSIONSRC = $(TOP)/extensions
X         XILIBSRC = $(EXTENSIONSRC)/lib/xinput
X        PEXLIBSRC = $(EXTENSIONSRC)/lib/PEXlib
X      PHIGSLIBSRC = $(EXTENSIONSRC)/lib/PEX
X# $XConsortium: sunLib.tmpl,v 1.14.1.2 92/11/11 09:55:02 rws Exp $
XSHLIBLDFLAGS = -assert pure-text
XPICFLAGS = -fpic
X     EXTENSIONLIB = -lXext
X        DEPXMULIB = $(USRLIBDIR)/libXmu.sa.$(SOXMUREV)
X       XMULIBONLY = -lXmu
X           XMULIB = -lXmu
X          OLDXLIB = -loldX
X      DEPXTOOLLIB = $(USRLIBDIR)/libXt.sa.$(SOXTREV)
X        DEPXAWLIB = $(USRLIBDIR)/libXaw.sa.$(SOXAWREV)
X           XAWLIB = -lXaw
X           XILIB = -lXi
X      DEPXAUTHLIB = $(USRLIBDIR)/libXau.a
X         XAUTHLIB =  -lXau
X      DEPXDMCPLIB = $(USRLIBDIR)/libXdmcp.a
X        DEPPHIGSLIB = $(USRLIBDIR)/libphigs.a
X           PHIGSLIB =  -lphigs
X       DEPXBSDLIB = $(USRLIBDIR)/libXbsd.a
X LINTEXTENSIONLIB = $(LINTLIBDIR)/llib-lXext.ln
X         LINTXLIB = $(LINTLIBDIR)/llib-lX11.ln
X          LINTXMU = $(LINTLIBDIR)/llib-lXmu.ln
X        LINTXTOOL = $(LINTLIBDIR)/llib-lXt.ln
X          LINTXAW = $(LINTLIBDIR)/llib-lXaw.ln
X           LINTXI = $(LINTLIBDIR)/llib-lXi.ln
X          LINTPEX = $(LINTLIBDIR)/llib-lPEX5.ln
X        LINTPHIGS = $(LINTLIBDIR)/llib-lphigs.ln
X# Imake rules for building libraries, programs, scripts, and data files
X# rules:  $XConsortium: Imake.rules,v 1.123 91/09/16 20:12:16 rws Exp $
X# start of Imakefile
X# Glasgow RX Imakefile.
Xall:: $(PROGRAMS)
Xinstall:: safe
Xinstall:: rx.pl
X	@if [ -d $(DESTDIR)$(BINDIR) ]; then set +x; \
X	else (set -x; $(MKDIRHIER) $(DESTDIR)$(BINDIR)); fi
Xinstall.man:: rx.man
X	@if [ -d $(DESTDIR)$(MANDIR) ]; then set +x; \
X	else (set -x; $(MKDIRHIER) $(DESTDIR)$(MANDIR)); fi
X	$(INSTALL) -c $(INSTMANFLAGS) rx.man $(DESTDIR)$(MANDIR)/rx.$(MANSUFFIX)
Xinstall::
X	$(RM) $(BINDIR)/rxterm
X	$(LN) $(BINDIR)/rx $(BINDIR)/rxterm
Xsafe:
X	@grep -s 'debug = 0' rx.pl || false
Xshar: safe
X	makekit -m -p
X	@-perl -pi -e "s/sinclair@dcs.gla.ac.uk/sinclair@dcs.gla.ac.uk/;" Part*
X# common rules for all Makefiles - do not edit
Xemptyrule::
Xclean::
XMakefile::
X	-@if [ -f Makefile ]; then set -x; \
X	$(RM) Makefile.bak; $(MV) Makefile Makefile.bak; \
X	else exit 0; fi
Xtags::
Xsaber:
X	# load $(ALLDEFINES) $(SRCS)
Xosaber:
X	# load $(ALLDEFINES) $(OBJS)
X# empty rules for directories that do not have SUBDIRS - do not edit
Xinstall::
X	@echo "install in $(CURRENT_DIR) done"
Xinstall.man::
X	@echo "install.man in $(CURRENT_DIR) done"
XMakefiles::
Xincludes::
X# dependencies generated by makedepend
if test 10172 -ne `wc -c <'Makefile'`; then
    echo shar: \"'Makefile'\" unpacked with wrong size!
fi
# end of 'Makefile'
fi
if test -f 'rx.man' -a "${1}" != "-c" ; then 
  echo shar: Will not clobber existing file \"'rx.man'\"
else
echo shar: Extracting \"'rx.man'\" \(3551 characters\)
sed "s/^X//" >'rx.man' <<'END_OF_FILE'
X.TH RX 1 "4 March 1993" "X Version 11"
Xrx,rxterm,r* - remote command, xterm, anything execution
X.I username
X.I host
X.I command
X.B rxterm
X.I username
X.I host
X.IR args .\|.\|.
XThe 
Xprogram connect to the specified
X.I host
Xand executes the specified
X.I command
Xin the background, returning immediately.  To allow the execution
Xof X programs, it copies a number of environmental variables to
Xthe remote session.  If you omit
X.IR command ,
Xthen rx will start an xterm on the remote host.  The
X.B rxterm
Xvarient starts a remote xterm on a host, and also passes
X.I args
Xto the remote xterm as arguments.
XShell metacharacters which are not quoted are interpreted on the local
Xmachine, while quoted metacharacters are interpreted on the remote
Xmachine.
XIf the name of the file from which
Xis executed is anything other than ``rx,''
Xtakes this name, stripped on a leading ``r'' as the command
Xto run on the remote host, using any
X.I command
Xparameters as arguments for the remote command.
Xthinks you are using
X.B xauth
Xbased X authorisation, and you are calling to a off-site host, or
Xto a different username, it will attempt to copy an authorization
Xkey to the remote account.  Otherwise it will try to use
X.B xhost(1)
Xto grant access to the remote host.
X.BI \-l " username"
XUse
X.I username
Xas the remote username instead of your local username.  In the absence
Xof this option, the remote username is the same as your local username.
XIf set, the values of PATH, DISPLAY, XENVIRONMENT, XAPPLRESDIR,
Xand XAUTHORITY are exported to the remote program, unless the
Xremote username is different, or the remote host is off-site, in which
Xcase only DISPLAY is exported, with in all cases any variables named in the
Xvariable RXENV.
XThe DISPLAY variable is tweaked as appropriate, to contain as qualified
Xa hostname as is needed.
X.IB command ": don't recognise my name."
Xcannot decode the name it has been called under.  In this case
Xit prints a warning message, and continues, as normal.
X.B "rx: usage: rx [-l username] hostname [args...]"
XThis means it could not decode the arguments given to it.
XDuncan Sinclair <sinclair@dcs.glasgow.ac.uk>, July 1992
XOriginally based on a program with the same name from the
Xdistribution.  To distinguish this "rx" from other programs
Xwith similar names, you should refer to this program as the
X.B Glasgow
XX(1), rsh(1), xterm(1), xauth(1), xhost(1), gwm(1)
Xmakes a number of assumptions about the relationship between the
Xlocal user, and the remote one, depending on whether the remote
Xhost is onsite or not, and whether an alternative username was used
Xor not.
XIn particular, if either the locally used shell, or the remotely
Xused shell is the standard Bourne Shell,
Xthen strange things are more likely to happen.  Especially when 
Xit's only one of them.
XSometimes quoting can get messed up.
XIt's too easy to fool the smarts in
Xto make it believe something that is not true, and fail because of it.
XWhen
Xuses
X.B xhost
Xto grant access, the
X.B xhost
Xcommand may fail silently.
Xtries to send to large a command to the remote machine, it will
Xlikely fail with a parse error from csh.  If this happens, you
Xwill probably have to reduce the size of the exported environment.
if test 3551 -ne `wc -c <'rx.man'`; then
    echo shar: \"'rx.man'\" unpacked with wrong size!
fi
# end of 'rx.man'
fi
if test -f 'rx.pl' -a "${1}" != "-c" ; then 
  echo shar: Will not clobber existing file \"'rx.pl'\"
else
echo shar: Extracting \"'rx.pl'\" \(9028 characters\)
sed "s/^X//" >'rx.pl' <<'END_OF_FILE'
X#! /usr/local/bin/perl
X# CONFIG: change the line above to point to your copy of perl.
X# Glasgow RX  version 3.1.7
X# Copyright 1992 Duncan Sinclair <sinclair@dcs.gla.ac.uk>
X# Last Modified:  Early April 1993.
X# Distribution limited, as per the usual MIT copyright.
X# remote execution of X programs.  Based on a script in an old version of gwm.
X# To install, put rx in your bin and make rxterm a link to it.
X#  Some configuration will be necessary, see "CONFIG" comments...
X# More and more this is less and less like the original....
X# Major hacked to work for our(my) set up, and also partly
X#  re-written to work with sh, rather than ksh.
X# Maybe I'll turn this into our first zsh script!
X# Looks like it turned into a perl script at some point - big improvement.
X# This code tries to be intelligent in the way it works.  This means there
X#  are tons of implicit assumptions about the environment it is run in.
X#  These assumptions are all valid on the machines I use, and in my
X#  environment.  At the same time, I try to make as few assumptions as possible
X#  about the remote machine.  Here's a list of all the more tricky ones...
X# *) That the remote machine has csh.  (Linux?)
X# *) That $RSHELL = /bin/(k)?sh ==> remote shell = /bin/(k)?sh.  (Make same.)
X# *) If remote shell = sh, that $PATH is compatible.  (Use csh, etc..)
X# *) I pass a cookie to the remote machine if need be, but does it
X#    know what to do with a cookie. (eat it?)
X# *) There must be others...
X# Why am I using csh to run the remote commands?  Simply because it doesn't
X#  interact badly with rsh, and hang waiting for a file descriptor to
X#  be closed.  I'd rather use zsh, or bash, or even perl, but they are not
X#  as universal as csh.
Xrequire "stat.pl";
X# What we called?
X$argv0 = $0 ;
X$argv0 =~ s:.*/:: ;
X# Change these variables to be your domain name, and a pattern that
X#  will match all variations on your domain name.  You must include
X#  those leading dots!!! If your hostname includes your domain, see
X#  the code further down, marked "XXX"
X$DOM  = ".dcs.gla.ac.uk" ;
X$DOMPAT = "\.dcs(\.gla(sgow)?(\.ac\.uk)?)?" ;
X# Change this to your value of BINDIR, or set the variable to "" if
X#  you think your users are smarter than that.
X$XPATHS = "/usr/X11/bin" ;
X# Make this the name of your "remote shell" command.
X# end of CONFIG
X# Some variables we'll no doubt use sometime...
X$usage = "$argv0: usage: $argv0 [-l username] hostname [args...]\n" ;
X$RSHELL = (getpwuid($<))[8] || "/bin/sh" ;
X$HOME = $ENV{"HOME"} || (getpwuid($<))[7] ;
X$XAUTH = $ENV{"XAUTHORITY"} || $HOME . "/.Xauthority" ;
X$LOGF = "~/.rx.log" ;
X$debug = 0 ;
X# Before anything else, close stdin.  This might stop rx hanging
X#  due to rsh weirdness.
Xclose(STDIN);
X# do a "-l" flag...
Xif ($ARGV[0] eq "-l") {
X  shift ;
X  $User = $ARGV[0] || die $usage ;
X  @LUser = ("-l",$User) ;
X  shift ;
X# Pick a host, any host...
X$MACH = $ARGV[0] || die $usage ;
Xshift ;
X# Things to think about for the remote machine.
X$OffSite = $MACH =~ /\./ ;
X# Where am I?  Seems we can't trust the dumb user to set HOSTNAME right!
X#$HOSTNAME=$ENV{HOSTNAME} || `hostname` ;		# Current Host
X$HOSTNAME=`hostname` ;					# Current Host
X#  If all your hostnames include your domain, comment out the next line.
Xif ( $OffSite ) { $HOSTNAME = $HOSTNAME . $DOM ; }	# XXX
X# Now we know where we are, and they are, are they different?
X$Diff = $HOSTNAME ne $MACH ;
X# What is the display going to be?
X# !! Danger !! Heavy Regular expressions follow...
X# This needs to be re-written to be modular and can so be extended to
X#  support resetting host:* to unix:*, as required.
X$DISPLAY =~ s/^(unix)?(:\d(\.\d)?)$/$HOSTNAME$2/ if ($Diff) ;
X$DISPLAY =~ s/^([^.]*)(:\d(\.\d)?)$/$1$DOM$2/ if ($OffSite) ;
X# Here comes the hard bit in sh.  Quote our args.
X# Also have to quote quotes.  To cope with csh braindamage,
X#  quotes are quoted thus; ' -> '\''
X# So for an arg "foo'bar", we get "'foo'\''bar'".
Xforeach (@ARGV) {
X# So what we doing?
X  if ($argv0 eq "rx") { last PROG ; }
X  if ($argv0 eq "rxterm") {
X    #unshift(@ARGV,"-ls") if ($Diff) ;
X    unshift(@ARGV,"xterm","-ls","-n",$MACH) ;
X    last PROG ;
X  if ($argv0 =~ /r(.*)/) { unshift(@ARGV,$1) ; last PROG ; }
X  warn "$argv0: don't recognise my name." ;
X# If nothing else, become an rxterm.
Xif (@ARGV == 0) {
X  #unshift(@ARGV,"-ls") if ($Diff) ;
X  unshift(@ARGV,"xterm","-ls","-n",$MACH) ;
X# Some special considerations if we are not ourselves on the other side.
Xif ($OffSite || $User) {
X  # We want to pass a cookie here.
X  if (-e $XAUTH) {
X    # This is going to be unsecure, as the cookie will appear in a number
X    #  of command line args.  But at least it'll work.
X    # This will need enhanced if we ever fix the code above to
X    #  set DISPLAY to ":0.0", when we return to the server.
X    $CooKie = `PATH=\$PATH:$XPATHS xauth list $DISPLAY` ;
X    chop($CooKie) ;
X    @CooKs = split(' ',$CooKie) ;
X    shift(@CooKs) ;
X    unshift(@STUFF,"xauth","add",$DISPLAY,@CooKs,";") if (@CooKs == 2) ;
X  } else {
X    # Yuk.  What a crock.  I hate doing this.
X    system("xhost +$MACH >/dev/null 2>/dev/null") if ($Diff) ;
X  # We really only want to pass a value for $DISPLAY.
X  @VARS=("DISPLAY", split(' ',$ENV{"RXENV"})) ;
X} else {
X  # Some variables we wish to export
X    # "MANPATH",		# for "rxman", and bourne shell users.
X    split(' ',$ENV{"RXENV"}),
X  # Braindead bourne shell, needs to be given a $PATH...
X  # We would rather not pass the current $PATH, because it might not work
X  #  on the destination machine.  I'd rather it was set by the user's
X  #  remote shell during the rsh.
X  # Fortunately, all *my* X programs are in an arch independant place, and
X  #  so it shouldn't cos a problem, locally.
X  # We check against $RSHELL, because they might be running another shell,
X  #  differant from their login shell.  I know, sounds weird, but it's too
X  #  common round here.
X  # I've also included ksh in the brain-damage, cos I can't see an easy way
X  #  to pass throught $ENV{"ENV"} without it being too late. (We only have
X  #  one person who has ksh as a login shell anyway...)
X  # Oh, yeah.. we are assuming that if it's bourne shell here, then it's
X  #  bourne shell there.  Much more important than this is that it it ISNT
X  #  bourne shell here, it better not be bourne shell there.
X  if ($RSHELL =~ m#/(k)?sh#) { push(@VARS,"PATH"); }
X# Validate $PWD routine...
Xsub validate_pwd {
X  local(@pwdstats, @dotstats);
X  local($pwd) = $_[0];
X  unless (defined($pwd))          { return undef; } ;
X  unless (@dotstats = stat("."))  { return undef; } ;
X  unless (@pwdstats = stat($pwd)) { return undef; } ;
X  if (($pwdstats[$ST_DEV] != $dotstats[$ST_DEV]) ||
X      ($pwdstats[$ST_INO] != $dotstats[$ST_INO])) { return undef; } ;
X# Try and find a nice, valid, pwd.
X  if ($PWD = $ENV{"PWD"}) {
X    $FOOPWD =~ s#(/tmp_mnt|/export)?/(.*)#/$2# ;
X    $PWD = &validate_pwd($FOOPWD) || &validate_pwd($PWD) ;
X  unless ($PWD) {
X    chop($PWD = `pwd`) ;
X    $FOOPWD =~ s#(/tmp_mnt|/export)?/(.*)#/$2# ;
X    $PWD = &validate_pwd($FOOPWD) || &validate_pwd($PWD) || $HOME;
X# Try to find somewhere nice to live on the other side.
Xunless ($OffSite) {
X  unshift(@STUFF,"test","-d",$PWD,"&&","cd",$PWD,";");
X# Start building the full command.
Xforeach $var (@VARS) {
X  ($val = $ENV{$var}) &&
X     unshift(@STUFF,"setenv","$var","\'"."$val"."\'",";") ;
X# Some commands to do on the other side...
Xunshift(@STUFF,"set","nonomatch",";");	# only if we are using csh.
X# Build the remote command.
X$REMOTE=("(umask 077 ; ((".join(" ",@STUFF,@ARGV).")</dev/null >&$LOGF &))") ;
X# Build the arg list for the exec.
X@COMM=($RSH,@LUser,"$MACH","csh","-fc",$REMOTE) ;
X# Do it!
Xif ($debug) {
X  print "@COMM\n" ;
X} else {
X  exec @COMM ;
X# Rsh doesn't return any indication of how it went over
X# on the other side, but that's OK, cos we aint going to
X# wait around to see what happened.
Xexit 0 ;
X# tHe ENd
if test 9028 -ne `wc -c <'rx.pl'`; then
    echo shar: \"'rx.pl'\" unpacked with wrong size!
fi
chmod +x 'rx.pl'
# end of 'rx.pl'
fi
echo shar: End of archive 1 \(of 1\).
cp /dev/null ark1isdone
for I in 1 ; do
    if test ! -f ark${I}isdone ; then
    fi
done
if test "${MISSING}" = "" ; then
    echo You have the archive.
    rm -f ark[1-9]isdone
else
    echo You still need to unpack the following archives:
    echo "        " ${MISSING}
fi
##  End of shell archive.
exit 0
    Duncan Sinclair  |  sinclair@dcs.gla.ac.uk  |  sinclair@uk.ac.gla.dcs
      ---  Would the *real* UNIX Operating System please stand up.  ---