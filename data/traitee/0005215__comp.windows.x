In article 1964@igd.fhg.de, haase@igd.fhg.de (Helmut Haase (Goebel)) writes:
>If I try to create a pixmap larger than the size of my screen the program
>will terminate displaying the message:
>X Error:  BadAlloc - insufficient resources
Many X servers supporting graphics accelerators do not allow the creation
of pixmaps exeeding the size of the screen.  One workaround is to create
several smaller pixmaps and add the results.
Ken Lee, klee@synoptics.com
