Some time back I asked for software recommendations to  allow me to
run X from my PC at home to my Sparc at the office.
Many thanks for all replies, the majority of people  recommended
PCXremote from NCD. I received it yesterday  and installed it on
my Sparc and PC with only one hitch. 
The UNIX install consists of copying 2 files into some local bin directory. 
On the PC side, I ordered the WINDOWS version  which  came with a slick windows
installation.
The only problem I had was that  my .xinitrc  in my home directory
had the line
DISPLAY=`hostname`:0.0; export DISPLAY
s.t the clients I kicked off connected to my Xserver on the Sparc console.
By removing this line from the .xinitrc everything worked as planned
and the clients connected to the server at
`hostname`:1.0
Some comments on performance, I was connected to a Sparc 2 thru
a NetBlazer Terminal Server over a 9600 baud line.
My PC is a 486-DX2 ATI Ultra, 16 MB
Bitmap Stuff Sucked.
Basic Editing and compilation stuff definitely usable.
Xmail was very usable.
At times the first time U typed in an Xclient window there was
a very noticable delay, I put this down to brain damaged "WINDOWS
should not be called a SCHEDULER", besides that this will become
my remote work environment for a while.
Has anybody tried the NON Windows version of the product, the sales
person said they performed about the same, given the over head of
WINDOWS I question this?
many thanks for help to all who responded
gerard
