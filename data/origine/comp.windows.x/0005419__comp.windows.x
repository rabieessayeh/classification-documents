Could someone PLEASE give a guess as to why this simple little program
causes a BadPixmap error on the FOURTH (bizarre???) call to XtRelaizeWidget()?
Here is the code:
int stoploop = 0;
static void Callback(Widget, XtPointer, XtPointer);
main()
        XtToolkitInitialize();
        XtAppContext app = XtCreateApplicationContext();
        while (1)
                int junk = 0;
                Display *dis = XtOpenDisplay(app, NULL, NULL, NULL, NULL, 0,
                                                &junk, NULL);
                Widget top = XtAppCreateShell(NULL, NULL,
                                applicationShellWidgetClass, dis, NULL, 0);
                Widget box = XtVaCreateManagedWidget("x",
                                                        xmPushButtonWidgetClass,
                                                        top,
                                                        XmNheight, 25,
                                                        XmNwidth, 25, NULL);
                XtAddCallback(box, XmNactivateCallback, Callback, NULL);
                XtRealizeWidget(top);
                while (!stoploop)
                        XEvent event;
                        XtAppNextEvent(app, &event);
                        XtDispatchEvent(&event);
                stoploop = 0;
                XtReleaseGC(top, XDefaultGCOfScreen(XtScreen(top))); // needed?
                XtDestroyWidget(top);
                XtCloseDisplay(dis);
static void Callback(Widget, XtPointer, XtPointer)
        stoploop = 1;
The error I get (yes, the 4TH time I try to show the box) is:
X Error of failed request:  BadPixmap (invalid Pixmap parameter)
  Major opcode of failed request:  55 (X_CreateGC)
  Resource id in failed request:  0xd0000d
  Serial number of failed request:  71
  Current serial number in output stream:  85
Please respond via email.  Thanks very, very much!
(NOTE: I realize this program does nothing useful, its an ultra-trivialized
version fo a real library routine)
David Rex Wood -- davewood@cs.colorado.edu -- University of Colorado at Boulder
