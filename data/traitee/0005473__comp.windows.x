In article <C5y8wJ.3zE@undergrad.math.uwaterloo.ca> papresco@undergrad.math.uwaterloo.ca (Paul Prescod) writes:
>I am considering making a reasonably large application for free
>distribution (probably copylefted).  I am going to use X.  Now I'm
The following packages meet your criteria in that they are PD and
present an aesthetically pleasant graphical interface to the users.
If you can use 386bsd:
	there is xview3 (OpenLook)
	there is Interviews which looks a little like Motif
	there is gopath a very nice C++ toolkit for Athena Widgets and Motif
	         which is simpler
                 and better than interviews and you will enjoy
                 technical support from Bull via e-mail
		 It has a nice draw program (it uses motif) which can be used
		 to create graphical front-end to programs.
		 The data format is called streams which you can feed
		 to your programs. I ported gopath on an internet machine
		 which is gone but if you use gcc-2.3.3 with minimal effort
		 gopath can be ported to 386bsd.
		 Last but not least, gopath interfaces to toolkits via a driver
		 module. They have an MS-Windows driver module for instance.
	Also, many have written extensions to tk/tcl thus allowing powerful
	applications. For instance, tcl_nm  has snmp extensions for tk/tcl.
	With ease, I  can now combine snmp network operations with graphs,
	photo-widget, graphical interface, file operations, database 
	operations,etc.. The author of tcl_nm mail me a simple network 
	management application which was about 80 lines long - it displayed
	various environmental parameters from a router. I wrote  a simple
	strip chart script for displaying Real-Time ip received
	packets/seconds.
	Hope this helps,
	Amancio Hasty
This message brought to you by the letters X and S and the number 3
Amancio Hasty           |  
Home: (415) 495-3046    |  ftp-site depository of all my work:
e-mail hasty@netcom.com	|  sunvis.rtpnc.epa.gov:/pub/386bsd/incoming
