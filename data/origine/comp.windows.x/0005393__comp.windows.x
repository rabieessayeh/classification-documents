 Hi Xperts!
   I have a Sparc-1 with very limited disk space on /usr partition.
   previously, i was able to run all x-windows applications  and then 
   i upgraded my system to sun o.s. 4.1.3 and realized that , the hard
disk did not have enough space to load openwindows. My immediate alternative
was to load only the neccessary files to boot the system. This resulted in
not loading openwindows. As a result of which none of the X-libraries got loaded.
   I am trying to load just the libraries and include files and bin/X11 files 
required for running X-windows and compiling my programs written for Xlib and Xaw.
In a desperate effort to regain x-windows, i retrieved /usr/lib/libX*.* files from
the tape . /usr/bin/X11/*  and /usr/include/X11/* . Is this enough for running X-windows
 BUt i did not get /usr/lib/X11/fonts/  sub directories . these are mainly 100dpi, 75dpi
 and misc. 
when i run xinit, the error message says /usr/lib/X11/fonts/100dpi etc are not in the
default path. But the problem is i cannot load any of those directories as there is no
disk space. 
Are there any temporary suggestions before I get a 1.5 GB disk and load openwindows , to
just have my x-windows running. 
Thanks
Pramod
