Hi, 
I'm trying to write a Motif program on an Interactive Unix machine, and I'm
observing very strange behavior when my program attempts to expose a
DrawingArea. Namely, some Xlib operations work, and some do not. In
particular, the expose consist of two XFillRectangle calls followed by some
XDrawPoint calls, and for reasons unknown to me the point calls are failing
whenever a pulldown or popup up menu is (clicked on and) moved in the
rightward direction over the drawing area, but after the move, is still on
some part of the drawing area. This also happens less consistently when the
pulldown/popup is moved in the leftward direction.
Assuming that my code is not doing anything incredibly odd, is this a server
bug?
Thanks,
Zack T. Smith
