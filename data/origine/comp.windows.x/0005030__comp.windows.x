>>>>> On 5 Apr 93 10:10:23 GMT, it4ik@dmu.ac.uk (I Kler) said:
IK> Nntp-Posting-Host: elm
IK> I know it sounds stupid, but....
IK> Does anyone know how to control individual mouse buttons.
IK> I am writing an application, which currently makes use of
IK> ButtonPressMask, however this is invoked by the pressing
IK> of any mouse button. I want to be able to restrict this
IK> to one of the 3 buttons. I tried Button1PressMask, but
IK> just get undefined errors. I know it can be done, and I
IK> am pretty sure theres an easy answer to it, but I just don't know
IK> what it is.
IK> "time is of the essence ..."
There is no event mask for a particular mouse button press. However in your
event handler you can use the event structure passed in and query it to find
which button was pressed i.e.
void
SomeEventHandler(Widget w, XtPointer data, XEvent *event)
    /* Catch the button 1 (usually left button) */
    if ( event->xbutton.button == Button1 ) {
        /* do some action */
    } else {
        /* do nothing and exit from function */
-Guy Singh,                 IXI            Internet: guy@x.co.uk
                            Vision Park    UUCP:     guy@ixi.uucp
                            Cambridge      Bang:     ...!uunet!ixi!guy
                            CB4 4ZR, UK    Tel:      +44 223 236 555
