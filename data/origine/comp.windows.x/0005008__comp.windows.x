I'm writing 'xwall', a simple X version of 'wall', and I want it to
put a message up on each of a default list of displays.  The problem
is that XOpenDisplay hangs if one of the displays is currently
controlled by xdm (login screen).   I've been through the manuals
and FAQ and don't see a simple way to see if a display is 'openable'
ahead of time, or to get XOpenDisplay to fail after a short period
of time.  Any hints, suggestions, clues, or pointers to info?  Thanks...
Andy Moore (andy@ice.stx.com)
"You could say I've lost faith in the politicians/
 They all seem like game show hosts to me..."          - Sting
