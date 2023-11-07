[ Article crossposted from hp.windows ]
[ Author was Andy DeFaria ]
[ Posted on Mon, 19 Apr 1993 18:08:38 GMT ]
For some reason the following code causes my X application to beep whenever I
intercept a keystroke and change it's meaning.  The intent of this code it to
allow "date" fields the following special keys:
	[Tt]:	Insert today's date
	[+=]:	Bump day up by one
	[-_]:	Bump day down by one
I hardcoded some dates for this example.  Perhaps I shouldn't be using an
XmText field for this.
// For some reason the following code beeps whenever any of the special keys
// of [Tt+=-_] are hit.  Why?  The idea of this code is to interpret these
// keys having the special meaning implied by the code.  I would like to get
// rid of the beeping but, as far as I can tell, I'm not doing the beep and 
// am at a lose as to understanding who and why the beeping is occuring.
#include <X11/Intrinsic.h>
#include <Xm/Xm.h>
#include <Xm/RowColumn.h>
#include <Xm/MainW.h>
#include <Xm/Text.h>
Widget		toplevel;
Widget		mainWindow;
Widget		mainPane;
Widget		dateField;
XtAppContext	application; 
void markToday (Widget date) {
   char *todaysDate = "04/19/93";
   XtVaSetValues (date, XmNvalue, todaysDate, NULL);
} // markToday
void markTomorrow (Widget date) {
   char *tomorrowsDate = "04/20/93";
   XtVaSetValues (date, XmNvalue, tomorrowsDate, NULL);
} // markTomorrow
void markYesterday (Widget date) {
   char *yesterdaysDate = "04/18/93";
   XtVaSetValues (date, XmNvalue, yesterdaysDate, NULL);
} // markYesterday
void datekeys (Widget          /* callingWidget */,
	       Widget          date,
	       XmTextVerifyPtr callbackData) {
   // Capture the keys [Tt-_+=] can change their behaviour.  If found
   // set "doit" to false so X won't interpret the keystroke. 
   switch (callbackData->text->ptr [0]) {
      case 't': case 'T': 
	 markToday (date);
	 callbackData->doit = FALSE;
	 return;
      case '-': case '_':
	 markYesterday (date);
	 callbackData->doit = FALSE;
	 return;
      case '+': case '=':
	 markTomorrow (date);
	 callbackData->doit = FALSE;
	 return;
      default:
	 return;
   } // switch
} // datekeys
void main (Cardinal argc, char *argv []) { 
   // Initialize Xt 
   toplevel = XtVaAppInitialize (&application, "Application", NULL, 0, 
				 &argc, argv, NULL, NULL); 
   // Create the toolface
   mainWindow = XtVaCreateManagedWidget 
      ("mainWindow", xmMainWindowWidgetClass, toplevel, NULL);
   // Create a mainWindow
   mainPane = XtVaCreateManagedWidget
      ("mainPane", xmRowColumnWidgetClass, mainWindow, NULL);
   // Create a small text area
   dateField = XtVaCreateManagedWidget
      ("dateField", xmTextWidgetClass, mainPane,
       XmNtopAttachment,	XmATTACH_FORM,
       XmNrightAttachment,	XmATTACH_FORM,
       XmNcolumns,		8,
   // Set modifyVerifyCallback to the datekeys callback   
   XtAddCallback (dateField, XmNmodifyVerifyCallback,
		  (XtCallbackProc) datekeys, (XtPointer) dateField);
   // Realize the toplevel 
   XtRealizeWidget (toplevel);
   // Go into the XtMainLoop
   XtAppMainLoop (application); 
} // main 
I swear by my life and the love of it that I will    | Andrew DeFaria
never live for the sake of another man nor ask       | Hewlett Packard
another man to live for mine.                        | California Language Labs
                    John Galt                        | defaria@cup.hp.com
I swear by my life and the love of it that I will    | Andrew DeFaria
never live for the sake of another man nor ask       | Hewlett Packard
another man to live for mine.                        | California Language Labs
                    John Galt                        | defaria@cup.hp.com
