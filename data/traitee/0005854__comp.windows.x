In <1993May11.144231.24879@ims.com> tonyf@ims.com (Antonio Freixas) writes:
>In article <1993May10.134631.14364@taylor.uucp>, mark@taylor.uucp (Mark A. Davis) writes:
>> *OH BOY* have I wanted this too.  However, I believe that the cursor will
>> be under the server's control (could be wrong)?  On an Xterminal, for
>> example, if the server was NOT the one controlling the cursor, then trying
>> to get the xterm application to do the blinking would cause needless and
>> yucky network overhead (consistantly).
>Most people who write cursor blinking code just implement the simple case: a
>straight 500msec (or so) on/off cycle.  However, the cursor will work much
>better if cursor blinking is suppressed (i.e. the cursor is made visible) any
>time the cursor moves and for .5 to 1 sec thereafter.  If you don't do this, the
>cursor will be hard to track when in motion.
You allways could port and use emu from export.lcs.mit.edu:contrib/emu.tar.Z.
We've implemented a blinking text cursor for the very reasons people mentioned.
You can even configure the actual size of the text cursor (horizontal / ver-
tical line cursors, smaller block cursors), turn on and off blinking,
set the blink rate and so on. You even get blinking text - ok, enough
advertising.
I haven't looked at the xterm code in this respect, but from the memories
I have when we had to decide whether to start with xterm and make it do
what we wanted (mostly the blinking text), I'd say it won't be easy, since
xterm is a hairy mess (understandable if you follow it's roots back to
The actual task to get the cursor to blink isn't that difficult if you
provide the right hooks. As Antonio mentioned, you'll have to show the
cursor directly after it has moved, or people will become confused.
Since it's a good idea to take the cursor off the screen when you 
do anything on screen anyways, this isn't very complicated. You'll just
have to start the blink process with the cursor showing directly after
it's mapped.
As for the portability of emu and it's newest version. The one on export
is still the same as on the R5 contrib tape. We wanted to get out a new
release for over six months now, but unfortunately we're drowning in work.
But since the changes aren't affectiong emu's behavior much, I'd say
whoever wants to try emu shouldn't wait for a new version.
As is, emu won't work on BSD derived systems (e.g. SUNs) with anything else 
than a csh. There is a fix to this, which is very short (remove one line
of code). I'll put this on export today.
Michael
Michael Elbel, Digital-PCS GmbH, Muenchen, Germany - me@dude.pcs.com
Intelligenz is sowieso nur wat fuer Doofe - Mia
Fermentation fault (coors dumped)
