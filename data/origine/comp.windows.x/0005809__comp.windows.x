In article <C6wLIJ.L5K@bailgate.gpsemi.com> wilkinson_m@roborough.gpsemi.com writes:
>Hi All,
>       This is the first time I've posted to the net, so I hope this is
>going to the right people.
>  I'm looking for software packages that run on an IBM PC clone that
>allows me to display Openlook and motif windows on the PC. 
>  The idea is to use the PC as a cheap X windows terminal for use by
>process Engineers at work. 
May I humbly suggest DESQview/X? (Of course, I'm biased...)
DESQview/X is a multitasker for DOS computers, that uses a standard
X11R4 server as it's display mechanism. DOS applications and Microsoft
Windows standard mode are converted on-the-fly to X-protocol, allowing
you to display them, or any R4 compatable X-program from any machine
on the net to display to the PC's local display (or to any other display
on the net).
Free tools are available for devloping X-applications for the DVX platform;
many X-programs have been ported between DVX and UNIX with little or
no modifications. (Often, you only need to create a new makefile!)
If you're interested in more details, you can check out the usenet group
comp.os.msdos.desqview, or just email me directly at support@qdeck.com,
and I'd be happy to fill you in.
       Quarterdeck Office Systems - Internet Support - Tom Bortels
 Pricing/Ordering : info@qdeck.com  |  Tech Questions : support@qdeck.com
  BBS: (310) 314-3227 * FAX: (310) 314-3217 * Compuserve: GO QUARTERDECK
anonymous ftp: qdeck.com (149.17.8.10), leave your email address as password
