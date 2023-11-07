In article <C5r25y.HFz@cs.columbia.edu> ethan@cs.columbia.edu (Ethan Solomita) writes:
|>	Hi. I'm trying to figure out how to make a window manager
|>place the window where the create window command tells it,
|>regardless of what it may think is right. (my application has
|>reason to know better)
|>	I don't want to set the override-redirect because I do
|>want all the embellishments that the window manager gives, I just
|>want the wm to accept my choice of location.
What "it may think is right" may be exactly what the user wants.
Assuming that your application "has reason to know better" is, IMHO,
anti-social.  If I start your application with a -geometry option are
you going to ignore that as well?
There's really no way to force a window manager to do much of anything
if it's managing your window.  You can ask, you can hint, but there's
no guarantee that you're going to get what you want.
Tom LaStrange        toml@boulder.ParcPlace.COM
