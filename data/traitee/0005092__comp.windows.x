I'm trying to set up an IPX for another group. I copied all the
X stuff that I compiled on my 4/280 (which runs SunOS 4.1.1) using
gcc 2.1, and most things run just fine. however, I did find a
couple of bugs, and when I try to recompile those clients on the IPX
(which runs 4.1.3), I get
ld: Undefined symbol
   _XShapeQueryExtension
   _XShapeCombineMask
I know that I can include libXext and get rid of those messages,
but I can't figure out why I get them on the IPX and not on the
4/280. any ideas?
Ned Danieley (ndd@sunbar.mc.duke.edu)
Basic Arrhythmia Laboratory
Box 3140, Duke University Medical Center
Durham, NC  27710   (919) 660-5111 or 660-5100
