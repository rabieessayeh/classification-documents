In article <MAILQUEUE-101.930420145015.384@oak.shu.ac.uk> D.Haywood@sheffield-hallam.ac.uk writes:
>Hi,
>  Environment: Sun Sparc 10, SunOs 4.1.3.  X11R5 path level 23.  My X process
>is started by xdm.
Okay, that's good.  I'm typing this from exactly the same setup.
(US-UNIX layout keyboard)  I did install the sunkbd patch, though.
>  i) I want to setup the backgroud (root window?) of the tvtwm display to
>     display the escherknot etc (grey is a very boring colour to work on)!
Make sure you're using "ssetroot", which comes with tvtwm.  When tvtwm
starts up, it nukes the existing root window.  Use an "ssetroot" after
tvtwm starts up.   (You could spawn off a "(sleep 10; ssetroot ...)&")
You can also use "VirtualDesktopBackgroundPixmap filename" or just
VirtualDesktopBackground if you just want another color besides grey.
> ii) When I open an Xterm on the Sparc 10, not all of the keys are recognised
>     and some keys on the keyboard are not sending the correct characters.
Did you install the sunkbd patch?  It's in the contrib directory on export.
All the keys on my keyboard send events properly, except the following:
The End, PageUp, PageDown on the 6-key cluster aren't recognized.
Even the compose key works.  (Though I can't seem to get the composed
characters in an xterm to get passed.)
Anyone have a fix for the last two?
--Dave
System Administrator, Penn State Population Research Institute
* Dog Dianetics ("Woof woof woof?  Page 725.") - Kibo
