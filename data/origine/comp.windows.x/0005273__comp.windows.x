I've just managed to get xdm running from an NCR 3000 (an SVR4 486 box
running XFree86 1.2) to my NCD XDisplay.  It's pretty much working, but
I'm encountering a weird error.  I'm attempting to start an xterm from
my .xsession file, but nothing happens.  Redirecting stderr to a file
using 'exec 2>$HOME/.xerrors' in .xsession reveals the error message:
  "xterm: Error 14, errno 1: Not owner"
Now, if I start xterm from the window manager, or from the command line,
it works fine.  And starting other clients, like the window manager (mwm),
and a clock, from my .xsession also works.
Anyone encountered this?  Suggestions?
aTdHvAaNnKcSe
Des Herriott,           /   As a wise man once said,
Micro Focus, Newbury.  /
+44 (0635) 565354     /  "It takes a lot of brains to be smart, 
dnh@mfltd.co.uk      /    but it takes some neck to be a giraffe."
