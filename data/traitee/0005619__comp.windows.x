In article <123645@netnews.upenn.edu> bradley@grip.cis.upenn.edu (John Bradley) writes:
>No, not another false alarm, not a "It'll certainly be done by *next* week"
>message...  No, this is the real thing.  I repeat, this is *not* a drill!
>Batten down the hatches, hide the women, and lock up the cows, XV 3.00 has
>finally escaped.  I was cleaning its cage this morning when it overpowered
>me, broke down the office door, and fled the lab.  It was last seen heading
>in the general direction of export.lcs.mit.edu at nearly 30k per second...
>If found, it answers to the name of 'contrib/xv-3.00.tar.Z'.
>Have a blast.  I'm off to the vacation capital of the U.S.:  Waco, Texas.
And here is the first patch :-) The following fixes some problems with the
Imakefile files and makes it possible to compile xv-3.00 under Solaris without 
having to use the ucb stuff:
--- Imakefile	1993/04/28 08:20:35
  OBJS4=	xcmap.o
  PROGRAMS= xv bggen vdcomp xcmap
  #if defined(HaveJpeg) || defined(HaveTiff)
  #  ifdef HaveJpeg
  OBJS4=	xcmap.o
  PROGRAMS= xv bggen vdcomp xcmap
! all::
! 	@echo ""
! 	@echo "  Did you remember to 'make depend' first?"
! 	@echo ""
  #if defined(HaveJpeg) || defined(HaveTiff)
  #  ifdef HaveJpeg
       SUBDIRS = tiff
  #  endif
  #  define PassCDebugFlags
     MakeSubdirs($(SUBDIRS))
-    DependSubdirs($(DUBDIRS))
  #endif
  all::
- 	@echo ""
- 	@echo "  Did you remember to 'make depend' first?"
- 	@echo ""
- all::
  	@echo "  building xv ..."
  	@echo ""
       SUBDIRS = tiff
  #  endif
  #  define PassCDebugFlags
+ #  define IHaveSubdirs
     MakeSubdirs($(SUBDIRS))
  #endif
  all::
  	@echo "  building xv ..."
  	@echo ""
- DependTarget()
  AllTarget($(PROGRAMS))
  NormalProgramTarget(xv,$(OBJS1),$(DEPLIBS),$(LOCAL_LIBRARIES),)
  NormalProgramTarget(bggen,$(OBJS2),$(DEPLIBS),$(LOCAL_LIBRARIES),)
  AllTarget($(PROGRAMS))
+ DependTarget()
+ #ifdef IHaveSubdirs
+    DependSubdirs($(SUBDIRS))
+ #endif
  NormalProgramTarget(xv,$(OBJS1),$(DEPLIBS),$(LOCAL_LIBRARIES),)
  NormalProgramTarget(bggen,$(OBJS2),$(DEPLIBS),$(LOCAL_LIBRARIES),)
  /* signal macros */
+ #if defined(sun) && defined(SYSV)
+ #define HOLD_SIG         sighold(SIGALRM)
+ #define RELEASE_SIG      sigrelse(0)
+ #define PAUSE_SIG        sigpause(0)
+ #else
  #define HOLD_SIG         sigblock(sigmask(SIGALRM))
  #define RELEASE_SIG      sigblock(0)
  #define PAUSE_SIG        sigpause(0)
+ #endif
  /* default for most folks */
  #define random  rand
  #define srandom srand
  #endif
+ #if defined(sun) && defined(SYSV)
+ #define random() rand()
+ #define srandom(x) srand(x)
+ #endif
--- xcmap.c	1993/04/28 07:09:03
  /* include files */
  #include <stdio.h>
+ #if defined(sun) && defined(SYSV)
+ #include <string.h>
+ #else
  #include <strings.h>
+ #endif
  #include <ctype.h>
  #include <X11/Xos.h>
--- tiff/Imakefile	1993/04/28 08:53:34
  tif_compress.o: Imakefile
+ #if HasGcc
  g3states.h: mkg3states.c t4.h
          -${RM} g3states.h
+ 	${CC} -traditional -o mkg3states ${CFLAGS} mkg3states.c
+         ./mkg3states > g3states.h || rm g3states.h
+ #else
+ g3states.h: mkg3states.c t4.h
+         -${RM} g3states.h
          ${CC} -o mkg3states ${CFLAGS} mkg3states.c
          ./mkg3states > g3states.h || rm g3states.h
+ #endif
  depend:: g3states.h
+ clean::
+ 	-${RM} mkg3states g3states.h
  DependTarget()
George Lindholm                                  phone:    (604) 822-4375
University Computing Services, UBC               fax:      (604) 822-5116
6356 Agricultural Road, Vancouver, B.C., Canada  internet: lindholm@ucs.ubc.ca
V6T 1Z2                                          bitnet:   USERGNL@UBCMTSG
