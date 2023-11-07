In article <BUZZ.93Apr19101538@lion.bear.com> buzz@bear.com (Buzz Moschetti) write
>In article <WHALEY.93Apr15103931@sigma.kpc.com> whaley@sigma.kpc.com (Ken Whaley) writes:
>>   Actually, I must also ask the FAQ's #1 most popular reason why graphics
>>   don't show up: do you wait for an expose event before drawing your
>>   rectangle?
>Suppose you have an idle app with a realized and mapped Window that contains
>Xlib graphics.  A button widget, when pressed, will cause a new item
>to be drawn in the Window.  This action clearly should not call XCopyArea() 
>(or equiv) directly; instead, it should register the existence of the new
>item in a memory structure and let the expose event handler take care
>of rendering the image because at that time it is guaranteed that the
>Window is mapped.
>The problem, of course, is that no expose event is generated if the window
>is visible and mapped.  Do you know the best way to "tickle" a window so
>that the expose event handler will be invoked to draw this new item?
What does this have to do with my original question???  I previously
stated that I did an XCopyArea of the depth-8 pixmap to the screen
just to make sure that my image had data, and it did.  This is NOT
a problem with expose events, it has to do with XCopyPlane not
working!!!
Does anyone have a code fragment they could send demonstrating that
XCopyPlane works???  This would be very helpful!
Thanks!
 Nancie P. Marin      NET:  nancie@neko.css.gov
 ENSCO Inc.           MAIL: 445 Pineda Ct.  Melbourne, Fl.  32940
