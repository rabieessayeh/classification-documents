I am using xnlock as the screensaver for a PC-based X server. However,
after an interval of no activity, my X session ends. This does not
happen when I use xscreensaver. 
My screensave command is fired up from my .xsession like this:
xautolock -time 1 -locker xnlock -corners ++++ -cornerdelay 1 &
My hypothesis is that xdm (I use xdmcp to start my X session) detects
a period of inactivity from the server, then terminates the session.
However, for some reason, this does not happen with xscreensaver. Is
there a workaround?
I'd prefer responses via e-mail.
Thanks.
"Economics is not for those who are atracted to real-world problems
which have simple and clear solutions. For these individuals, I
recommend astrology."  -- Hugo Sonnenschein
