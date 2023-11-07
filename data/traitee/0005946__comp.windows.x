In <1993May16.213936.6904@wariat.org> allbery@wariat.org (allbery) writes:
>As quoted from <1993May13.212321.2563@moepi.do.open.de> by bernward@moepi.do.open.de (Bernward Averwald):
>> Back in the days of X11.1 I did analyse the xterm code. The cursor 
>> was implemented by drawing a rectangle around the character. I doesn't
>> seem to be changed 'til now.
>> But if you have the sources you could add a blinking cursor via
>> XtAppAddTimeOut or similar :-|.
>The server overhead for this is mildly ridiculous, though (see also DESQview/X,
>which does this in its DOS windows).  Do you really want xterm to wake up every
>half second and whack the server into doing a bitblt?
So what? I'm running emu on a 25 MHz 68020 box. I cannot make out ANY
difference in performance whether the cursor is set to blinking or
not (If you think about it a bit, a cycle of 400 ms is a hell a lot of
time for even the slowest PC). Since you would of course only enable
the blinking text cursor when your xterm has the input focus, this 
application is active anyway. To repeat it, a blinking text cursor
costs almost nothing in performance, it just needs some thought when
designing the xterm software.
Michael
Michael Elbel, Digital-PCS GmbH, Muenchen, Germany - me@dude.pcs.com
Intelligenz is sowieso nur wat fuer Doofe - Mia
Fermentation fault (coors dumped)
