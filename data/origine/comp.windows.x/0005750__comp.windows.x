Can anyone help with this?
System: SPARC Classic, Solaris 2.1, gcc 2.3.3, X11R5
When I try to build the XView libraries (xview3, patched with the patch from
the X11R5-Solaris kit), I get the following error:
rm -f ndet_loop.o shared/ndet_loop.o
gcc -fpcc-struct-return -E   -O2  -I../../.././build/include  -I/usr/X11R5/include  -DSVR4 -DSYSV  -DFUNCPROTO=15 -DOS_HAS_LOCALE -DOS_HAS_MMAP   ndet_loop.c \
| xstr -l _libxview_xstr -c -
gcc -fpcc-struct-return -fPIC   -O2  -I../../.././build/include  -I/usr/X11R5/include  -DSVR4 -DSYSV  -DFUNCPROTO=15 -DOS_HAS_LOCALE -DOS_HAS_MMAP   -c x.c \
-o shared/ndet_loop.o
In file included from ../../.././build/include/xview/notify.h:29, from ../../.././build/include/xview_private/ntfy.h:24, from x.c:18:
/usr/include/sys/ucontext.h:25: parse error before `sigset_t'
/usr/include/sys/ucontext.h:25: warning: no semicolon at end of struct or union
/usr/include/sys/ucontext.h:26: warning: data definition has no type or storage class
/usr/include/sys/ucontext.h:29: parse error before `}'
/usr/include/sys/ucontext.h:29: warning: data definition has no type or storage class
In file included from ../../.././build/include/xview_private/ntfy.h:24, from x.c:18:
./../.././build/include/xview/notify.h:286: parse error before `*'
./../.././build/include/xview/notify.h:286: warning: data definition has no type or storage class
In file included from x.c:35:
/usr/include/sys/user.h:226: `MAXSIG' undeclared, outside of functions
ndet_loop.c:71: `NSIG' undeclared, outside of functions
ndet_loop.c:85: variable `ndet_sigvec' has initializer but incomplete type
ndet_loop.c:88: parse error before `*'
ndet_loop.c:88: warning: data definition has no type or storage class
ndet_loop.c: In function `ndet_fig_sig_change':
ndet_loop.c:687: `NSIG' undeclared (first use this function)
ndet_loop.c:687: (Each undeclared identifier is reported only once
ndet_loop.c:687: for each function it appears in.)
ndet_loop.c: In function `ndet_signal_catcher':
ndet_loop.c:751: parse error before `ucontext_t'
ndet_loop.c:764: `sigset_t' undeclared (first use this function)
ndet_loop.c:764: parse error before `newmask'
ndet_loop.c:766: `newmask' undeclared (first use this function)
ndet_loop.c:769: `oldmask' undeclared (first use this function)
ndet_loop.c:777: parse error before `)'
ndet_loop.c:795: warning: assignment makes pointer from integer without a cast
ndet_loop.c:798: parse error before `)'
ndet_loop.c: In function `ndet_send_delayed_sigs':
ndet_loop.c:825: `sigset_t' undeclared (first use this function)
ndet_loop.c:825: parse error before `newmask'
ndet_loop.c:837: `newmask' undeclared (first use this function)
ndet_loop.c:839: `oldmask' undeclared (first use this function)
ndet_loop.c:848: parse error before `)'
ndet_loop.c: At top level:
ndet_loop.c:1022: parse error before `*'
ndet_loop.c:85: storage size of `ndet_sigvec' isn't known
*** Error code 1
make: Fatal error: Command failed for target `ndet_loop.o'
rm -f ndet_loop.o shared/ndet_loop.o
gcc -fpcc-struct-return -E   -O2  -I../../.././build/include  -I/usr/X11R5/include  -DSVR4 -DSYSV  -DFUNCPROTO=15 -DOS_HAS_LOCALE -DOS_HAS_MMAP   ndet_loop.c \
| xstr -l _libxview_xstr -c -
gcc -fpcc-struct-return -fPIC   -O2  -I../../.././build/include  -I/usr/X11R5/include  -DSVR4 -DSYSV  -DFUNCPROTO=15 -DOS_HAS_LOCALE -DOS_HAS_MMAP   -c x.c \
-o shared/ndet_loop.o
In file included from ../../.././build/include/xview/notify.h:29, from ../../.././build/include/xview_private/ntfy.h:24, from x.c:18:
/usr/include/sys/ucontext.h:25: parse error before `sigset_t'
/usr/include/sys/ucontext.h:25: warning: no semicolon at end of struct or union
/usr/include/sys/ucontext.h:26: warning: data definition has no type or storage class
/usr/include/sys/ucontext.h:29: parse error before `}'
/usr/include/sys/ucontext.h:29: warning: data definition has no type or storage class
In file included from ../../.././build/include/xview_private/ntfy.h:24, from x.c:18:
./../.././build/include/xview/notify.h:286: parse error before `*'
./../.././build/include/xview/notify.h:286: warning: data definition has no type or storage class
In file included from x.c:35:
/usr/include/sys/user.h:226: `MAXSIG' undeclared, outside of functions
ndet_loop.c:71: `NSIG' undeclared, outside of functions
ndet_loop.c:85: variable `ndet_sigvec' has initializer but incomplete type
ndet_loop.c:88: parse error before `*'
ndet_loop.c:88: warning: data definition has no type or storage class
ndet_loop.c: In function `ndet_fig_sig_change':
ndet_loop.c:687: `NSIG' undeclared (first use this function)
ndet_loop.c:687: (Each undeclared identifier is reported only once
ndet_loop.c:687: for each function it appears in.)
ndet_loop.c: In function `ndet_signal_catcher':
ndet_loop.c:751: parse error before `ucontext_t'
ndet_loop.c:764: `sigset_t' undeclared (first use this function)
ndet_loop.c:764: parse error before `newmask'
ndet_loop.c:766: `newmask' undeclared (first use this function)
ndet_loop.c:769: `oldmask' undeclared (first use this function)
ndet_loop.c:777: parse error before `)'
ndet_loop.c:795: warning: assignment makes pointer from integer without a cast
ndet_loop.c:798: parse error before `)'
ndet_loop.c: In function `ndet_send_delayed_sigs':
ndet_loop.c:825: `sigset_t' undeclared (first use this function)
ndet_loop.c:825: parse error before `newmask'
ndet_loop.c:837: `newmask' undeclared (first use this function)
ndet_loop.c:839: `oldmask' undeclared (first use this function)
ndet_loop.c:848: parse error before `)'
ndet_loop.c: At top level:
ndet_loop.c:1022: parse error before `*'
ndet_loop.c:85: storage size of `ndet_sigvec' isn't known
*** Error code 1
make: Fatal error: Command failed for target `ndet_loop.o'
Obviously, most of this is due to the problem encountered while including 
<sys/ucontext.h> - I've tried several approaches, but can't get past this point.
Any help would be greatly appreciated.
Mahalo nui o kakou,
Henry Stilmack                               )  
Computing Systems Manager                    ) Perform random kindnesses 
UK/Netherlands/Canada Joint Astronomy Centre )   and senseless acts of beauty
660 N. A'ohoku Place, Hilo, HI 96720         )   
hps@jach.Hawaii.Edu       808-969-6530       )    
