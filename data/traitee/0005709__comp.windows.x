Sorry about the garbage code, the following is used of course:
XSetForeground(Disp, PixGC, BackgroundColor);
XFillRectangle(Disp, Pixs, PixGC, 0, 0, Scr_width, Scr_height);
XSetForeground(Disp, PixGC, ForegroundColor);
XDraw[Line|String|Rectangle](Disp, Pixs, PixGC, ...);
XCopyArea(Disp, Pixs, Win, PixGC, 0, 0, Win_width, Win_height, 0, 0);
Juergen Schietke
Research Insitute for Discrete Mathematics
University of Bonn
Nassestr. 2
5300 Bonn 1
Tel: (+49) 0228 738786
E-Mail: schietke@or.uni-bonn.de
