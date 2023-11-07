From article <1993Apr17.010256.14372@eafs000.ca.boeing.com>, by ten0772@eafs000.ca.boeing.com (Timothy E. Neto):
> rainer@sun3.eeam.elin.co.at (Rainer Hochreiter) writes:
>>I've seen a lot of different terms, which seem to mean the same thing.
>>Who can give an exact definition what these terms mean:
>>	-) multi-screen
>>	-) multi-headed
>>	-) multi-display
>>	-) X-Server zaphod mode
>>Is there a limit how many screens/displays a single server can handle
>>(in an articel a read something about an upper limit of 12) ?
>>How is the capability called, if I want to move the cursor from one
>>screen/display to another.
> As to how many clients may be display on a server, I believe the limit
> would be how much memory is available to your server or allocated by the
> server.
This all sounds suspiciously like my company might have something to
do with this.
Background first: Megatek has a series of framebuffers designed as
X accelerators. For the most part these are designed for Sun SBUS
and Sun (and other vendor's) VME systems.
That said, Megatek products support multi-screen and/or multi-display
on a sigle workstation. Most of our cards have a keyboard/mouse port
which can be used to provide additional displays. For example, say
you hade a Sparcstation with an Sbus expansion chassis. You could
put in six frambuffers, allowing a total of six screens in the system.
You could then attach from 1 to 6 keyboard/mice, allowing you to
mix and match any combination of screens and displays. You could
have 1 6-screen display, 3 2-screen displays, 6 1-screen displays,
or 1 2-screen display and 1 4-screen display. Basically any
combination.
Because of this, we at Megatek try to be very careful about the use
of the words multi-screen and multi-display. They are quite different
in meaning, and (at least in X) have exact definitions.
The reason I ramble like this is the mention of an upper limit if 12
screens in a display. As it so happens, there's a define in the server
that determines the most screens supported (server/include/misc.h,
MAXSCREENS). As released my MIT, this is 3. As released by Megatek,
this is 12.
As such, the most screens supported by a single Megatek display (i.e.
X server) is 12. If someone construed this to be a limitation of X
I'm sorry, but clearly (as pointed out so well by Mr. Neto) this is
not the case.
We just did it here because nobody has ever asked us for more. Of
course, I could say "Buy all you want, we'll support more."
Rusty Sanders, Megatek Corp. --> rgs@megatek.com or...
         ...ucsd!    ...hplabs!hp-sdd!    ...ames!scubed!   ...uunet!
