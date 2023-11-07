Hi all,
I wrote a small application which uses pixmaps copied into a window
to show some drawings. This works perfectly for all kind of objects
expect large fonts. What happens on the screen is that the right
half of the font is not shown. The way I create these things is
quite simple; some aggregated code:
XFillRectangle(Disp, Pixs, AnyColor, 0, 0, Width, Height);
XDraw[Line|Rect|String](...);
XCopyArea(Disp, Pixs, Win, 0, 0, Width, Height, 0, 0);
I am using a RS6K 340 with BOS 3.2.
The question is:
  is this a bug in the AIX X-server (may be some PTFs), or did I do
  something wrong within my code??
Sorry for the cross-posting, but I really do not know what kind of
error it is.
Juergen Schietke
Research Insitute for Discrete Mathematics
University of Bonn
Nassestr. 2
5300 Bonn 1 (Germany)
Tel: +49 0228 738786
E-Mail: schietke@or.uni-bonn.de
