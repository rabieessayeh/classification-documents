In article <1r3th9INNdtp@tom.rz.uni-passau.de> rank@winf.uni-passau.de (Christian Rank) writes:
>I've installed X11R5 with patches for Solaris 2.1 on our SPARCstation LX /
>SPARCclassic pool. On the LX, X11R5 runs fine, but on the classics,
>after giving the command startx, Xsun prints the following messages:
>	WARNING: cg3_mmap: can't map dummy space!
>	Mapping cg3c: No such device or address
>and exits.
>Does anybody know how to fix this problem?
I'm just guessing here, but I'd guess that X11R5 expects the CG3 to have
1152x900 resolution, and the version of the CG3 in the SPARCclassic is 
Disclaimer: I do not represent SunSoft, Inc., Sun Microsystems, Inc., etc., etc.
Brian Herzog, SunSoft          herzog@Eng.Sun.COM             ...!sun!eng!herzog
