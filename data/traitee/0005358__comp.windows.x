>>>>> On 21 Apr 1993 03:49:16 GMT, dla@se05.wg2.waii.com (Doug Acker) said:
	Doug> NNTP-Posting-Host: se05.wg2.waii.com
I  am  having  a  big problem trying to build MIT X11R5 with xlc 1.2.1
(the  one  bundled  with  AIX  3.2.3e).   Its almost the linker is not
working properly with shared libraries.
I've built X11R5 with no problem before .. but now its all  headaches.
For example, the xset client complains that libXmu doesnt have a bunch
of Xt routines and shr.o is missing (or  something  like  that).   The
build of libXmu DOES link in libXt  so I am really perplexed  what  is
going on.
....following up on this, the specific error I get is:
Could not load program ./xset 
Symbol XtVaSetValues in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtName in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtWindowOfObject in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtGetConstraintResourceList in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtDisplayToApplicationContext in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtAppSetTypeConverter in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtScreenDatabase in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtResolvePathname in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtCvtStringToFont in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtCallConverter in ../.././lib/Xmu/libXmu.a is undefined
Symbol XtDisplayStringConversionWarning in ../.././lib/Xmu/libXmu.a is undefined
Could not load library libXmu.a[shr.o]
Error was: Exec format error
Douglas L.Acker                Western Geophysical Exploration Products
____    ____     ____          a division of Western Atlas International Inc.
\   \  /   /\   /   /\         A Litton / Dresser Company
  \  /   / \  /   /\   \       Internet  :  acker@wg2.waii.com
   \/___/   \/___/  \___\      Voice     :  (713) 964-6128
