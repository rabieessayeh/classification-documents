I am using X11R5patch23 with the R5-SUNOS5 patch posted on export.
I did optionally apply the patch.olit.
libXmu compiles fine .. when I try to use it with clients (i.e. bmtoa and
twm), I get errors ... I can not figure out what is wrong:
gcc -fpcc-struct-return -o twm gram.o lex.o deftwmrc.o add_window.o gc.o list.o twm.o  parse.o menus.o events.o resize.o util.o version.o iconmgr.o  cursor.o icons.o -O2   -R/usr/wgep/X11R5.sos5/lib${LD_RUN_PATH+\:$LD_RUN_PATH} -L../.././lib/Xmu -lXmu -L../.././lib/Xt -L../.././extensions/lib -L../.././lib/X -L../.././extensions/lib -lXext -L../.././extensions/lib -lXext -L../.././lib/X -lX11 -L/usr/wgep/X11R5.sos5/lib  -lsocket -lnsl
ld: warning: file ../.././extensions/lib/libXext.so: attempted multiple inclusion of file libXext.so
Undefined                       first referenced
 symbol                             in file
XtAppSetWarningMsgHandler           ../.././lib/Xmu/libXmu.so
XtScreenDatabase                    ../.././lib/Xmu/libXmu.so
XtDisplayStringConversionWarning    ../.././lib/Xmu/libXmu.so
XtErrorMsg                          ../.././lib/Xmu/libXmu.so
XtRealloc                           ../.././lib/Xmu/libXmu.so
XtIsManaged                         ../.././lib/Xmu/libXmu.so
XtMalloc                            ../.././lib/Xmu/libXmu.so
XtGetApplicationResources           ../.././lib/Xmu/libXmu.so
XtOwnSelection                      ../.././lib/Xmu/libXmu.so
XtGetConstraintResourceList         ../.././lib/Xmu/libXmu.so
XtCalloc                            ../.././lib/Xmu/libXmu.so
XtName                              ../.././lib/Xmu/libXmu.so
XtStringConversionWarning           ../.././lib/Xmu/libXmu.so
XtAppSetTypeConverter               ../.././lib/Xmu/libXmu.so
XtDisplayToApplicationContext       ../.././lib/Xmu/libXmu.so
XtGetResourceList                   ../.././lib/Xmu/libXmu.so
XtFree                              ../.././lib/Xmu/libXmu.so
XtDestroyWidget                     ../.././lib/Xmu/libXmu.so
XtGetValues                         ../.././lib/Xmu/libXmu.so
XtWarningMsg                        ../.././lib/Xmu/libXmu.so
XtTranslateCoords                   ../.././lib/Xmu/libXmu.so
XtCvtStringToFont                   ../.././lib/Xmu/libXmu.so
XtWidgetToApplicationContext        ../.././lib/Xmu/libXmu.so
XtWarning                           ../.././lib/Xmu/libXmu.so
XtCreateWidget                      ../.././lib/Xmu/libXmu.so
XtWindowOfObject                    ../.././lib/Xmu/libXmu.so
XtVaSetValues                       ../.././lib/Xmu/libXmu.so
XtAppWarningMsg                     ../.././lib/Xmu/libXmu.so
XtGetSelectionValue                 ../.././lib/Xmu/libXmu.so
XtResolvePathname                   ../.././lib/Xmu/libXmu.so
ld: fatal: Symbol referencing errors. No output written to twm
*** Error code 1
Douglas L.Acker                Western Geophysical Exploration Products
____    ____     ____          a division of Western Atlas International Inc.
\   \  /   /\   /   /\         A Litton / Dresser Company
  \  /   / \  /   /\   \       Internet  :  acker@wg2.waii.com
   \/___/   \/___/  \___\      Voice     :  (713) 964-6128
