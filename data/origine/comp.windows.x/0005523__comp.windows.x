We recently got an NCD X-terminal to evaluate. This is running XRemote over
a serial line.
I wanted to get some measurement of response time, so I wrote a small Xlib
program which simply creates a window, maps it and sends the first Expose 
event to itself. The program times the delay from sending the event, to 
receiving it.  I thought this was the simplest way to test client/X-server 
round-trip delays. It's a similar concept to the ping(8C) program.
Is this a valid test to perform ? I've also tried the xbench program, available
from ftp.uu.net, which bombards the server with graphics operations, but I 
just wanted to get a quantative measure of what is "acceptable" interactive 
response time. Has anyone got any ideas on this subject ?
Thanks.
Andrew. (afielden@mlsma.att.com)
|Andrew Fielden. AT&T Network Systems UK |        Tel : +44 666 832023      |
|Information Systems Group (SUN support) |   Email : afielden@mlsma.att.com |
