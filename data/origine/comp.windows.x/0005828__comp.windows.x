Hi,
I have a lots of problems using XView (libraries Release 3.2) in order to
do the following:
+ I want to create a MODAL Dialog which block the program flow
  (a syncronous dialog, ala Macintosh) , as the Notice Panel
  does, but with Text Item, List Item, and other XView objects.
+ The MODAL Dialog also must allows the Timer to be called (why
  Notice doesn't do that?).
The problems are:
- Using the "xv_window_loop" functions most XView objects dont work
  (as the List Item), and the timers aren't called.
- With the "notify_dispatch" explicit I have problem because:
  "...never attempt to do direct dispaching from within a callback
  routine..." as say the "XView Programming Manual (Third Edition)"
  on page 486 (uhm... I know this number!!! :->).
  But I need to do dispatching just inside a callback routine!
Help me, please!!!
Thanks in advance,
--- Giovanni
P.S. Please, send replay directly to my address belove (I haven't
direct access to Internet).
Giovanni Beani
LIST S.p.A. P.za Dei Facchini, 10 - 56125 PISA
My email address is: LIST@AppleLink.apple.com
BEWARE: This address is shared by many users,
so put the word "GBeani:" at the start of SUBJECT
field and follow it by the real subject. Thanks.
