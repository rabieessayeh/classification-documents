Hi ppl,
I am running XFree386 under Linux SLS1.0 and am trying to get the german
keyboard working. I have already recompiled my kernel and the german
keyboard in the textmode works just fine.
I have found out, that there is a preconfigured german keymap for X
called Xmodmap.gr in /usr/lib/X11, so I ran xmodmap /usr/lib/X11/Xmodmap.gr.
My first impression was very good, I was able to get Z and Y straight :)
There's still a little problem I can't solve however:
I cannot get at the backslash, bar, brackets and curly brackets.
The ALT-GR key doesn't seem to work.
I tried xev to find out whether it produces an event at all and it does.
Looking up its keycode (113) in the Xmodmap I found the entry "Mode_switch"
which doesn't ring any bell. The entries for the keys I cannot use seem
to be correct. Example: keycode XX = ssharp questn backslash
The first 2 entries I can even get at. The first one is the unmodified
key and the second is the key with shift, but what is the 3rd??
My guess is that it should be the key with ALT-GR but it isn't.
If anybody has run into similar problems and knows how to solve them,
help would be appreciated.
Alaric
