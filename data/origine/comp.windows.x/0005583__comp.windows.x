Dear sun and windows people,
I am running sun workstations with SunOs 4.1.1 and 
vanilla X11 R5. I have a bunch of xterminals as well.
Today I had my xdm fail. At about 9:30
it was impossible to login to a host from an xterminal.
The message was the "xdm too many retransmissions".
In my xdm-errors file I had the following entries:
  >error (pid 7423): Server for display :0 terminated unexpectedly:
  >error (pid 7927): WARNING: keyboard on display :0 could not be
  >secured
  >error (pid 7423): Server for display :0 terminated unexpectedly:
  >I also had:
  >error (pid 7457): WARNING: keyboard on display :0 could not be
  >secured
  >error (pid 7423): Server for display :0 terminated unexpectedly:
  >error (pid 7462): WARNING: keyboard on display :0 could not be
  >secured
  >error (pid 7423): Server for display :0 terminated unexpectedly:
Also, at the console, the login box would come up for
about 2 seconds and then
it would go away. It would do this continuously.
I could login from another workstation to the hosts in question,
however, I could not login on the console.
I tried killing xdm and restarting it but that didn't help.
I finally rebooted all the hosts. (Which hurts when done in the
middle of the day).
Any help would be appreciated.
Thanks,
Phil 
Phil Neal, Systems Programmer, Statistics Department GN-22
University of Washington, Seattle, Wa. 98195 USA  | 206-685-1627
"Look, another bit!" -- Repo Man (the movie)
