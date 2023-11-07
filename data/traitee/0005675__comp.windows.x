In <9304211637.AA03386@blue.arbortext.com> rps@arbortext.COM (Ralph Seguin) writes:
>My question is this:  Is there a means of determining what the state
>of CapsLock and/or NumLock is?
I don't know any way except to see what modifiers are on in th
Keypress event.  Of course if there is some reason why you need to
always know the state of modifiers even if your windows don't have the
keyborads focus you can always ask for KeyPress events from the root
window.  Then you get all the KeyPresses and you always know what have
been pressed.
>An even more pointed question: Is there an easy means of making an X
>keyboard act like a PC keyboard?  ie, CapsLock is active, and the user
>presses shift-a, I'd like to get a lowercase 'a' instead of 'A'.
I think this is just a question of how to implement XLookupString.
You can always write another function that interprets the KeyPresses
as you like.  You can look at the implementation of XLookupString from
the Xlib sources and then modify it a little bit.
        Sami.Tikka@hut.fi | /G=Sami/S=Tikka/O=hut/ADMD=fumail/C=fi/
                           "Live Long and Prosper!"
