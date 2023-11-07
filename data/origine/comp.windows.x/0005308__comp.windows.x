Some one asked me recently why they when they used XQueryBestCursor to see
if they could create of a given size it seemed to imply they could, but the
server did not create cursors of that size. Investigation showed that some X
servers will happily return any size up to the size of the root window, while
others return some fixed limit of more reasonable size. The interesting thing
to me is that the same server binary acts differently on different hardware -
a Sun4 with a cg2 will claim cursors up to root window size are OK, while a
Sun4 with a cg6 will stop at 32x32. So far I've also seen this behavior on
NCD and Phase-X X terminals and have been told it also occurs on HPs. 
Actually, the NCD is even more liberal - sizes much larger then the root
winodw are gladly returned as OK. Is XQueryBestCursor semi-broken or is this
behavior correct? I'd really like to see a 2000x2000 cursor!
Richard Neitzel thor@thor.atd.ucar.edu          Torren med sitt skjegg
National Center For Atmospheric Research        lokkar borni under sole-vegg
Box 3000 Boulder, CO 80307-3000	                Gjo'i med sitt shinn
303-497-2057                                    jagar borni inn.
