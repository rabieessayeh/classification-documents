In article <1qmt3i$66io@ep130.wg2.waii.com>, dla@se05.wg2.waii.com (Doug Acker) writes:
|> I am using X11R5patch23 with the R5-SUNOS5 patch posted on export.
|> I did optionally apply the patch.olit.
|> libXmu compiles fine .. when I try to use it with clients (i.e. bmtoa and
|> twm), I get errors ... I can not figure out what is wrong:
|> gcc -fpcc-struct-return -o twm gram.o lex.o deftwmrc.o add_window.o gc.o list.o twm.o  parse.o menus.o events.o resize.o util.o version.o iconmgr.o  cursor.o icons.o -O2   -R/usr/wgep/X11R5.sos5/lib${LD_RUN_PATH+\:$LD_RUN_PATH} -L../.././lib/Xmu -lXmu -L.|> ./.././lib/Xt -L../.././extensions/lib -L../.././lib/X -L../.././extensions/lib -lXext -L../.././extensions/lib -lXext -L../.././lib/X -lX11 -L/usr/wgep/X11R5.sos5/lib  -lsocket -lnsl
|> ld: warning: file ../.././extensions/lib/libXext.so: attempted multiple inclusion of file libXext.so
|> Undefined                       first referenced
|>  symbol                             in file
|> XtWindowOfObject                    ../.././lib/Xmu/libXmu.so
|> ld: fatal: Symbol referencing errors. No output written to twm
|> *** Error code 1
The problem was that SunPost411Ld was not defined.
Douglas L.Acker                Western Geophysical Exploration Products
____    ____     ____          a division of Western Atlas International Inc.
\   \  /   /\   /   /\         A Litton / Dresser Company
  \  /   / \  /   /\   \       Internet  :  acker@wg2.waii.com
   \/___/   \/___/  \___\      Voice     :  (713) 964-6128
