> My question is this:  Is there a means of determining what the state
> of CapsLock and/or NumLock is?
Alright.  Ignore this.  I have delved a bit deeper (XKeyEvent) and
found what I was looking for.
ev->state   has a bunch of masks to check against (LockMask is the one
for CapsLock).  Unfortunately, it appears that the NumLock mask varies
from server to server.  How does one tell what mask is numlock and
which are for Meta (Mod1Mask, Mod2Mask, Mod3Mask, Mod4Mask, Mod5Mask).
eg, SGI's vendor server has Mod2Mask being NumLock, whereas Solaris
1.0.1 OpenWindows 3.0 has Mod3Mask for NumLock.  Is there an
unambiguous means of determining NumLock's mask at runtime for any
given server?  Sorry for the wasted bandwidth and my appalling ignorance.
			Thanks, Ralph
