Experiment: From a Sun openwindows 4.1.3 xterm window log into a
Solaris 2.x machine using rlogin; now do an "ls" and get the first
character of each line display in the last column of the display
with the rest of the line wrapped to the next line of the display.
Log out and the condition persists.  Check stty all, try reset
with no effect.
Use telnet instead of rlogin and it doesn't occur.
Try it from a unix console and it doesn't occur.
(1) What's causing this?
(2) Can it be avoided?
(3) How can the terminal characteristics be reset?
Please send replies to shenk@math.gatech.edu
Georgia Institute of Technology, Atlanta Georgia, 30332
uucp: ...!{allegra,amd,hplabs,seismo,ut-ngp}!gatech!prism!ma201rs
ARPA: ma201rs@prism.gatech.edu
