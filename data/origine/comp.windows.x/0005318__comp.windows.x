In article <1993Apr19.191531.15865@news.media.mit.edu>, dyoung@media.mit.edu (David Young) writes:
|>    XSetFunction( myDisplay, gc, GXxor);
|>    XSetForeground( myDisplay, gc, drawIndex);
|> Then to draw I do:
|>    XDrawLine( myDisplay, XtWindow( drawingArea1), gc, x1, y1, x2, y2);
|>    XFlush( myDisplay);
|> And when I'm all done, to return things to normal I do:
|>    XSetFunction( myDisplay, gc, GXcopy);
|> What I'd like to happen is for the lines I draw to be the inverse of
|> whatever I'm drawing over.  Instead what happens is I get white lines.  If
|> the lines are over a white background - nothing shows up.  If the lines are
|> over a black area - nothing shows up!  It's very strange.  But the GXxor
|> function seems right - since if I do a rubber-banding box, it erases and
|> redraws itself correctly (ie. not disturbing the underlying image).
|> Any suggestions what I'm doing wrong?
|> david
   Try change the GXxor to GXequiv.  I have to do this for programs that
   are to run on NCD terminals (on Sun terminals I have to change it
   back to GXxor)...
Kurt.
