  What is the EXACT entry (parameter and syntax please), in the X-Terminal
configuration file (loaded when the X-Terminal boots), to add another system 
to the TCP/IP access control list?   
  I have two unix systems, 1. an AT&T 3B2 running X11R3 and MIT's X11R4 and 
2. a Sun SS10 without any X.  
  I want to have a window to the Sun and the 3B2 on the NCD X-Terminal at the
same time.  I can do this if I manually set the Network Parameter TCP/IP
Access Control List to off, then login to my telnet session. Not Great!  
  I've tried to get "xhost" to work and failed.  Either my syntax is wrong
or the X11R3 implementation is bogus.  
  I am trying to edit the NCD configuration file that is loaded when the 
NCD boots.  No matter what entry I add or edit, the NCD still boots with
the TCP/IP Access Control list containing only the 3B2.
  My manuals are worthless so any help would be most appreciated!!  Thanks!
Ann Marie Barden  	abarden@afseo.eglin.af.mil
