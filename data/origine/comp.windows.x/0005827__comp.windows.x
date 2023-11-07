  How can I draw an object of a specified color over objects of varying colors
  and then erase it without having to redraw everything else?
  What's happening is this,
      If I draw it using GXcopy, it is drawn in the specified color.  If I erase
      it using GXcopy with foreground and background reversed, it erases 
      whatever it overlayed.  I then need to redraw
      all of the items it crossed.  Yuch.
      If I draw it using GXinvert it is drawn in a random color - nothing 
      resembling what I requested.  It properly restores the color of 
      underlying objects in erase mode.
  What's the solution?
Scott K. Frost                  UUCP: osu-cis!chemabs!scott.frost
Same Mbox: BITNET: skf26@cas    INET: scott.frost@cas.org
Personal: 2753 Shrewsbury Rd, Upper Arlington Oh 43221 
