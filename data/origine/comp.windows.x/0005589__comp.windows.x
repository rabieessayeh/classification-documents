We have a Sun 3/80 and we have just acquired a cg8 frame buffer card.
The cg8 is supposed to support both a 24-bit color visual and a monochrome visual.
The default visual for the xnews server is the monochrome, and we are unable to change it to
the 24-bit visual. We have tried using XGetVisualInfo to get a visual of depth 24, but had no
success.  xdpyinfo gives no information about a 24-bit deep visual, only monochrome. 
There are two possible solutions:
	If someone has patches for X11R5 Xsun server, could they forward them to us?
	Otherwise, could someone instruct us how to access the 24-bit color in openwindows?
Jon Herlocker		email:  herlock@lclark.edu
Lewis & Clark College
Portland, OR 97219
