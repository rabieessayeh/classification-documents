Hello!
We want to configure our X11R5 sytem (i486 33Mhz running BSD-like UNIX)
comming up with a chooser menu with different machines on it (works) an then
connect to them. But the only connection works is localhost!
An 'X -indirect <machine>' works very well!
The configuration:
		- starting the 'xdm' at boot time with no servers specified
		   in Xservers
		- starting the X-server at boot time with X -indirect localhost
	     ---> the chooser menu appears with the machines named in
		  Xacces bye
			'*	CHOOSER <machine1> <machine2> ... BROADCAST	
		- the number of users on this machines and the load is 
		    displayed correct
		- selecting an other machine than my own host the X-server
		   starts and nothing happens, after a time out the CHOOSER menu
		   appears again.
I know the xdm bug in X11R4, but all machines running X11R5
Please help
			Lars
Lars Koeller			    E-Mail: uphya001@odie.Uni-Bielefeld.de
Universitaet Bielefeld (Germany)	    uphya001@dave.hrz.Uni-Bielefeld.de
Fakultaet fuer Physik / D0-231	    Phone:  +49 521-106-5375
Universitaetsstr. 25		    Fax:    +49 521-106-5244
4800 Bielefeld 1		    Telex:  932 362
