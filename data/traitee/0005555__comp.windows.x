amathur@ces.cwru.edu (Alok Mathur) writes:
>I would like to know how I can set the depth of the frame to be 24 bits.
>I tried using the following Xlib code :
>Am I using a completely wrong approach here ? Is it possible to set the depth
Yes.
>and colormap for a window created by Xview ? What am I doing wrong ?
Look up XV_DEPTH.  Also, you might want to try using XView colormap segments
instead of Xlib for your colormap stuff.  They will probably be easier
for you to use, and since you are using a TrueColor visual, you won't
be losing anything compared to straight Xlib.
-Jonathan		hue@island.COM
