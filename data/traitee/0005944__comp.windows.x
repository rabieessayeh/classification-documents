Yes we have the same problem with xinit.  The problems seems to come from the
fact that the XOpenDisplay(":0") fails.   If we try (on our machine
named godzilla)
setenv DISPLAY godzilla:0.0
Xibm&
xterm 
It works fine, but the following will not work
setenv DISPLAY unix:0.0
Xibm&
xterm 
Did we set a configuration option incorrectly?  Thank you for any assistance
you can offer.
                    Herb Hasler --- herb@iiasa.ac.at
      International Institute for Applied Systems Anaylsis  (IIASA)
          A-2361 Laxemburg, Austria --- +43 2236 715 21 ext 548
