In article <1993Apr26.122007.25760@relay.nswc.navy.mil> rchui@opal.nswc.navy.mil writes:
>I created a pixmap or drawable window, then used XDrawLine() function 
>to draw a [clipped] line ... = 300
>I created the pixmap or drawable window only with size 300x300.
>But I draw line from p1(x1=270,y1=100) to p2(x2=500,y2=800).
>My question is, dose the XDrawLine function can finger out that correct
>p3(x3 and y3) for me? If you calculate x3 and y3. 
If you're asking, "does the X server perform clipping
correctly when drawing lines," the answer is "yes."
