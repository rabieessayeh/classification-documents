Jeff Haferman (haferman@icaen.uiowa.edu) wrote:
> Can somebody point me to source code for dumping the contents of
> an X-window into a color postscript file?  I have written
> an app which brings up an X-window, and I want (at the click
> of the mouse) to dump the window into a postscript file.
> Thanks.
> Jeff Haferman                            internet: haferman@icaen.uiowa.edu
> Department of Mechanical Engineering     DoD 0186  BMWMOA 44469  AMA 460140
> The University of Iowa
> Iowa City, IA  52242                                 '76 R90S
I use xwd and xwd2ps. To do it from within a program I use
xwd -id xxxxx where xxxxx is the window id obtained from XtWindow(widget).
| Raju Gurung, I.T. 109, I.T. Building, Dept. of Electrical Eng.,     | 
| University of Manchester, Oxford Rd, Manchester, U.K.               |
