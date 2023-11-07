barmar@think.com (Barry Margolin) writes:
>In article <1993May18.130845.6859@taylor.uucp> mark@taylor.uucp (Mark A. Davis) writes:
>>You are stuck in a distributed system feedback loop!  What if you are on an
>>Xterminal or running xterm over the net to another machine?  That is when the
>>load problems occur.  If you had a machine with 20 Xterminals attached and
>>they all had blinking cursors in xterm's, this could represent a considerable
>>ethernet bandwidth waste.
>Ethernet certainly has enough bandwidth for a few blinking cursors.  My
>Lisp Machine blinks the cursor twice a second and updates the time in the
>status line every second.  This uses under 1K bytes/second, or about .1% of
>the bandwidth of Ethernet.  A hundred of them on a single ethernet might be
>a problem, but a couple dozen should be fine.
Granted it's nothing to loose sleep over, but this is Ethernet's tragic flaw:
the more activity (especially lots of tiny activity), the more collisions
happen and the performance gets exponentially worse...  I am just now
opposing ANY kind of waste of bandwidth under Ethernet.  Although in a polling
system it would not be so bad.
  | Mark A. Davis    | Lake Taylor Hospital | Norfolk, VA (804)-461-5001x431 |
  | Sys.Administrator|  Computer Services   | mark@taylor / mark@taylor.UUCP |
