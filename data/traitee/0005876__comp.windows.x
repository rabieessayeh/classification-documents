bernward@moepi.do.open.de (Bernward Averwald) writes:
>Yes. Don't confuse the mouse cursor with the text cursor in the xterms.
>The latter is only controlled by the application.
>Back in the days of X11.1 I did analyse the xterm code. The cursor 
>was implemented by drawing a rectangle around the character. I doesn't
>seem to be changed 'til now.
>But if you have the sources you could add a blinking cursor via
>XtAppAddTimeOut or similar :-|.
Xt(App)AddTimeout doesn't work in xterm, because, despite appearances 
to the contrary, xterm is not really an Xt based application.  "Other
sources" like timeouts and inputs are never checked in xterm's main
loop. So don't be surprised when you try this and it doesn't work.
Kaleb
