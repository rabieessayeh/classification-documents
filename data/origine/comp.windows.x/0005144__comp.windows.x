..continuing on my build problems, I got stuck here build xterm...
gcc -fpcc-struct-return -o xterm main.o input.o charproc.o cursor.o util.o tabs.o  screen.o scrollbar.o button.o Tekproc.o misc.o  VTPrsTbl.o TekPrsTbl.o data.o menu.o -O2   -R/usr/wgep/X11R5.sos5/lib${LD_RUN_PATH+\:$LD_RUN_PATH} -L../.././lib/Xaw -lXaw -L../.././lib/Xmu -lXmu -L../.././lib/Xt -lXt -L../.././extensions/lib -lXext -L../.././lib/X -lX11 -L/usr/wgep/X11R5.sos5/lib  -lsocket -lnsl -ltermcap
Undefined                       first referenced
 symbol                             in file
index                               /usr/ucblib/libtermcap.a(termcap.o)
rindex                              /usr/ucblib/libtermcap.a(termcap.o)
ld: fatal: Symbol referencing errors. No output written to xterm
*** Error code 1
make: Fatal error: Command failed for target `xterm'
Any clues for help?
Douglas L.Acker                Western Geophysical Exploration Products
____    ____     ____          a division of Western Atlas International Inc.
\   \  /   /\   /   /\         A Litton / Dresser Company
  \  /   / \  /   /\   \       Internet  :  acker@wg2.waii.com
   \/___/   \/___/  \___\      Voice     :  (713) 964-6128
