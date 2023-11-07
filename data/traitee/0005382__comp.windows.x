Hello,
I am testing a port of X11R5 to Coherent, a unix clone OS for Intel architecture
machines.  I am seeing a strange problem with text in clients like xvt (a simple
terminal emulator program).
The problem manifests it self when the shell echoes typed characters back to the
server for display, one at a time.  The characters appear to be too closely
spaced, with the result being that the 2nd character echoed destroys the 
rightmost edge of the first character, then the 3rd character destroys the 
rightmost edge of the second character, and so on.  It looks like there is an
invisible boundary around a character which obscures a portion of the previous
character.  There is no problem between the characters when the shell returns
a complete line of text... only when the output is a series of individual
characters.
If anyone has any ideas what the problem might be, or where I should look to
find it, it would be much appreciated.
Regards and thanks, Jon Dhuse.
 Jon Dhuse              |     Internet: jdhuse@sedona.intel.com
 Intel  Corp.  CH3-69   |     Phone: (602)-554-2685
 5000 W. Chandler Blvd. | Any opinions expressed are my own,
 Chandler, AZ  85226    | not my employer's.
