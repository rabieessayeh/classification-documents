We've just recently upgraded our X11 to R5 and are now running into problems
with some of our applications that use Motif 1.1.  It appears that pointer to
the widget being passed to the callback function (i.e., the "w" of
(w, client, call) ) is nil.  The client and call pointers are okay in some
instances, but bogus in other instances.
We are running SunOS 4.1.2 on a Sun 4.  After compiling X11R5 and all 23
patches (with the MotifBC flag set), we recompiled Motif and then we 
recompiled the application.
Did we skip a step or leave something out?  Is there a flag that we should
have used?  Should we have left Motif alone?
Any answers or suggestions would be greatly appreciated.
Thanks
Kathy
Kathy Saint             ||  "She's a witch!! She's a witch!!."
"I'm not dead yet."     ||  "How can you tell she's a witch?"
                        ||  "She looks like one!!"
saint@mitchell.hac.com  ||      - "Monthy Python & the Holy Grail"
