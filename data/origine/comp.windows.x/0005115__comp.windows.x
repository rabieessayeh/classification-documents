/* Apologies for those who have read this before but no-one has solved this */
/* one yet so I'm posting again! Sorry :-)                                  */
I'm having problems creating a cursor bigger than 64x64, I'm using Motif 1.1
X11R4 running HP-UX 8.07 - all the functions return valid results but no
cursor appears when the bitmap is bigger than the aforementioned size. I tried
using the following code:
unsigned int w,h;
XQueryBestCursor(XtDisplay(programArea), XtWindow(programArea), 72, 71, &w,
to return the nearest size to what I require however it returns 72 and 71 as
the width and height respectively. What am I doing wrong? and if not how can I
get round the problem!!
Thanks in advance
Mike
