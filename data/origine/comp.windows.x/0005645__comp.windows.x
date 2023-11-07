In <1rmhiuINNh2a@skeena.ucs.ubc.ca> lindholm@ucs.ubc.ca (George Lindholm) writes:
>In article <1rlhhkINNg62@skeena.ucs.ubc.ca>, lindholm@ucs.ubc.ca (George Lindholm) writes:
>> In article <123645@netnews.upenn.edu> bradley@grip.cis.upenn.edu (John Bradley) writes:
>> And here is the first patch :-) The following fixes some problems with the
>> Imakefile files and makes it possible to compile xv-3.00 under Solaris without 
>> having to use the ucb stuff:
>Oops, I didn't get the signal processing right (thats what I get from doing
>the work on an ascii terminal). Here is the fixed patch:
The patches for xv.h need to use ``#ifdef SVR4'' rather than the
overly complex ``#if defined(sun) && defined(SYSV)'' in order to
generically compile XV on i386SVR4Architecture.  Also, rand and srand
don't work very well--use lrand48 and seed48 to get better results.
Otherwise, xv-3.00 compiles just fine on my Esix System V 4.0.4 box
with XFree86 and gcc-2.3.3.  I just uncommented the gcc definition in
the Makefile, added -L/usr/X386/lib -I/usr/X386/include to the COPTS
line and modified LIBS to include -lsocket -lnsl.  Really John, if you
just use the Imakefile things like this don't even have to get
mentioned...
  /* signal macros */
+ #ifdef SVR4
+ #define HOLD_SIG         sighold(SIGALRM)
+ #define RELEASE_SIG      sigrelse(SIGALRM)
+ #define PAUSE_SIG        sigpause(SIGALRM)
+ #else
  #define HOLD_SIG         sigblock(sigmask(SIGALRM))
  #define RELEASE_SIG      sigblock(0)
  #define PAUSE_SIG        sigpause(0)
+ #endif
  /* default for most folks */
  #define random  rand
  #define srandom srand
  #endif
+ #ifdef SVR4
+ #define random lrand48
+ #define srandom seed48
+ #endif
