In article <C5r25y.HFz@cs.columbia.edu> Ethan Solomita writes:
> 	Hi. I'm trying to figure out how to make a window manager
> place the window where the create window command tells it,
> regardless of what it may think is right. (my application has
> reason to know better)
> 	I don't want to set the override-redirect because I do
> want all the embellishments that the window manager gives, I just
> want the wm to accept my choice of location.
	window = XCreateWindow(...);
	XSetTransientForHint(display, window, window);
	XMapWindow(...);
This is probably cheating, and some window managers might STILL refuse to 
give it a border and all that other stuff, but it usually works.
