In article AA04287@neko.CSS.GOV, nancie@neko.CSS.GOV (Nancie P. Marin) writes:
>I am trying to use XCopyPlane to copy a single plane 
>from a depth-8 pixmap to a depth-1 pixmap.  Everytime I
>try this, I see absolutely nothing displayed.  I know there
>is data in the depth-8 pixmap becuase I have checked by doing
>an XCopyArea to the screen.
The code fragment looks reasonable, but is your logic valid?
Just because something appears in an 8 bit deep pixmap doesn't
mean every bit plane contains data.  Did you try each plane?
Ken Lee, klee@synoptics.com
