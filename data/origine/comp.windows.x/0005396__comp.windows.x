> I have a problem when I'm using PostScript. When I am working local 
> on a SUN SPARCstation IPC the PostScript works good, but when I connect
> to the SUN from a X-terminal I just get error messages that the
> PostScript cannot connect to the news-display.
>  Why doesn't PostScript work on an X-terminal
	Because xterminals do not have a NeWS server.  xterminals have
speed by nature of their limited functionality: once you add NeWS and
everything else, you have a workstation.  There are workarounds, I've
heard, one involving a perl script.  What we are trying to do is
replace programs that need NeWS (like pageview) with programs that
don't (like ghostview).
	Maybe someone else can elaborate on the perl workaround; I
have no personal experience with it.
  Greg Owen  { gowen@forte.cs.tufts.edu, gowen@jade.tufts.edu }
Systems Programmer and TA, Tufts University Computer Science Dept.
  230-   All transfers are disclaimed by my host name and boss's address.
  230-   If you don't like this policy, disconnect now!
