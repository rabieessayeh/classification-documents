herzog@dogwalk.Eng.Sun.COM (Brian Herzog - SunSoft Product Engineering) writes:
>I'm just guessing here, but I'd guess that X11R5 expects the CG3 to have
>1152x900 resolution, and the version of the CG3 in the SPARCclassic is 
I've used X11R5 with classics set for both 1024x768 and 1152x900 (you
can choose which resolution you want in the PROM monitor before
booting).  One person had trouble with X11R5 that was fixed by
using the multi-screen version.  Here's how our version was built.
(You can just copy /usr/local/X11R5/bin/Xsun from farside.rutgers.edu
if you just want to see whether this version will work.)
  R5 distribution installed,
        from pub/R5/mit-[1-4] and contrib-[1-3] on export.lcs.mit.edu
  patches 1 - 23 installed,
	from pub/R5/fixes on export
  R5 Xsun Multi-screen patches installed, 
	from contrib/R5.Xsun.multi-screen* on export, 22-Mar-93
  Solaris 2.1 patches installed, release 1/update 2,
	from contrib/R5.SunOS5.patch* on export, 22-Mar-93
Compilation is with gcc 2.3.3.  Configuration is standard, except that
the root is /usr/local/X11R5, per Rutgers conventions.
