  I'm running HP-UX 8.07 with HP VUE 2.01 and I need a hardcopy of
  the login window (the one asking  for login and password) to 
  include in a manual. 
  I have tried:
   xwd -display hostname:0 -root -out login.xwd 
  from a login on a remote terminal, but it doesn't work. 
  Xwd seems to wait for the window server, but the window
  server doesn't answer. 
  Any suggestions? I must use xwd because I don't have access to
  ftp and I can't obtain another program to grab the screen.
  Thanks in advance
                                           Nadia Pitacco
	-  Nadia Pitacco                 SIAP Sistemi S.p.A.  -
	-  via G.B. Grassi, 93 - 20157 Milano ITALY           -
	-  E-Mail: morgaine@siap.sublink.org                  -
