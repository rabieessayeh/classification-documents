I am saving an image on one machine and redisplaying the image on
another machine (both are HP 9000 Model 750s).  The image is created
using XCreateImage and XGetImage and displayed with XPutImage.  The
image is redisplayed correctly except that the colors are wrong because
the server on the other machine is using a different colormap.
I tried saving the colormap (pixel and rgb values) and on the redisplay,
performed a table lookup against the new colormap.  This didn't work
because some rgb combos don't exist in the new colormap.
Is there a way to force the server to load colors into set pixel values, or
is there a simpler way to solve this problem?  I tried using xinitcolormap
but couldn't get that to work either.
Any help would be appreciated.
Don Lemoine
Naval Surface Warfare Center
Dahlgren Division
Dahlgren, VA 22405
dlemoin@xobu.nswc.navy.mil
