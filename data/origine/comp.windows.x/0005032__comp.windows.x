In article <1993Mar31.022947.149@etrog.se.citri.edu.au>, jck@catt.citri.edu.au (Justin Kibell) writes:
|>   I am writing a program which needs to draw colour XPM pixmap files onto a background without having the borders show up. I cannot do xor as the colours all stuff up. I cannot use XCopyPlane() as that is for single planes only. I want to be able to specify a colour in the pixmap to be used as the opaque colour. Is this possible. 
|> Games such as xjewel have the same problem. How does the mouse pointer do it?
|> Any help would be helpful? :-)
You wanna do masking. Build a bitmap (pixmap of depth one) where all pixels
you name "opaque" are 1 (that get copied) and the others are 0. Use this
bitmap as the clip_mask in the gc used for XCopyArea(), and remember to
adjust the clip_origin coordinates to the XCopyArea() blit origin.
The Mouse pointer (besides from that it is driven using RAMDAC analog
mapping on most hardwares) uses a mask, too.
But be warned: blitting through a mask and especially moving around this mask
is annoying slow on most xservers... it flickers even at 40 MIPS...
+-o-+--------------------------------------------------------------+-o-+
| o |                \\\-  Brain Inside -///                       | o |
| o |                    ^^^^^^^^^^^^^^^                           | o |
| o | Andre' Beck (ABPSoft) mehl: Andre_Beck@IRS.Inf.TU-Dresden.de | o |
+-o-+--------------------------------------------------------------+-o-+
