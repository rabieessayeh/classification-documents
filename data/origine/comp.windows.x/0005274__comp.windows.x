In article <4378@creatures.cs.vt.edu>, ramakris@csgrad.cs.vt.edu (S.Ramakrishnan) writes:
>    Environment:
>       mach/arch : sparc/sun4  (IPX)
>       OS	: SunOS 4.1.3
>       X11	: X11R5 (patchlevel 22)
>       Motif	: 1.2.2
> I bring up X server using 'startx' and /usr/bin/X11/Xsun. The following sequence
> of actions crashes the X server (SIGPIPE, errno=32, 'xinit' reports that connexion 
> to X server lost):
I had this problem as well - It had to do with the CG6 graphics card that
comes with the IPX.  What fixed the problem for me was to apply the "sunGX.uu"
that was part of Patch #7.  Patch #1 also used this file so perhaps you
didn't apply the one that came with Patch #7.
jeff
Jeff W. Boote  <boote@ncar.ucar.edu>      *********************************
Scientific Computing Division             * There is nothing good or bad  *
National Center for Atmospheric Research  * but thinking makes it so.     *
Boulder                                   *                   Hamlet      *
