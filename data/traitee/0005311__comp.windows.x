Can anyone help me?
I am having a problem displaying images greater than 32768 bytes from a
Decwindows program running on a Vax 6310, and displaying on a Sparc IPC
running Openwindows 3.0 and dni. The program works fine with Openwindows 2.0.
The code segment which fails is given below, the program simply crashes
out with an Xlib I/O error at the XPutImage() call.
	XImage          *ximage;
	ximage = XCreateImage(myDisplay, DefaultVisual(myDisplay, myScreen), 
			      ddepth, ZPixmap, 0, image,
			      xwid, ywid, 8, 0);
	XPutImage(myDisplay, myWindow, myGC,
		  ximage, 0, 0, xpos, ypos, xwid, ywid);
| Paul Jaques                                                               |
| Systems Engineer, Camborne School of Mines,                               |
|                   Rosemanowes, Herniss, Penryn, Cornwall.                 |
| E-Mail: pjaques@csm.ac.uk Tel: Stithians (0209) 860141 Fax: (0209) 861013 |