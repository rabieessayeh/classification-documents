Hi, netters!
I've just built X11R5 pl 21 under Solaris 2.1. I've used the multi-screen 
patch, as well as the R5.SunOS... patch and everything builds great, except 
for that error message Xsun gives me upon startup. It says: 
"Cannot set default font path '[stuff deleted]'" and "Cannot set default font
'fixed'". If I supply the -fp option, it doesn't complain about the font path
but still complains about the font. I have symlinks from /usr/lib/ to the 
place where my distribution lives.
Could somebody help me?
	-joel
Joel Reymont    !   Z-Code Software Corporation    ! e-mail: joel@z-code.com 
4340 Redwood Hwy, Suit B.50, San Rafael, CA 94903
