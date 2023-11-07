In article <BADING.93Apr23105229@athene.cs.tu-berlin.de> bading@cs.tu-berlin.de (Tobias 'Doping' Bading) writes:
>I know that the mwm has an resource to specify if positions are to be used for
>the border of a window or for the "user" window. Maybe other window managers
>have similar options.
>Another way to figure out the difference between the "user" window position
>and the window manager decoration window position is to subtract their
>positions. You just have to use XQueryTree and remember that the window manager
>decorations window is the parent of your window. Unfortunately, you can only
>figure out the decoration width and height after the window has been mapped
>this way.
	Another way would be to use GetGeometry to find out where
you are relative to the frame, and TranslateCoordinates to find
out where your window's upperleft corner really is.
	-- Ethan
