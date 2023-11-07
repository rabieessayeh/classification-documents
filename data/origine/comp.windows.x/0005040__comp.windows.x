Try this:
#include <stdio.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
Display *dpy;
int	screen;
XColor	*xclrs,*xclrp;
XID	cmap;
int	cells,i,j,red,green,blue,got;
main()
 dpy = XOpenDisplay(NULL);
 screen = DefaultScreen(dpy);
 cells = DisplayCells(dpy,screen);
 cmap = XCreateColormap(dpy,RootWindow(dpy,screen),DefaultVisual(dpy,screen),1);
 xclrs = (XColor *)malloc(cells * sizeof(*xclrs));
 for (i=0; i<cells; i++) { xclrp->pixel = i; xclrp->flags = 7; xclrp++; };
 XQueryColors(dpy,DefaultColormap(dpy,screen),xclrs,cells);
 XStoreColors(dpy,cmap,xclrs,cells);
 XInstallColormap(dpy,cmap);
 got = 1;
 while(got) {
  got = 0;
  for(i=0; i<cells; i++)  {
   if(xclrp->red < 65000) {xclrp->red += 256; got = 1;};
   if(xclrp->green < 65000) {xclrp->green +=256; got=1;};
   if(xclrp->blue < 65000) {xclrp->blue +=256; got=1;};
  XStoreColors(dpy,cmap,xclrs,cells);
/*  XInstallColormap(dpy,cmap); */
 got = 1;
 while(got) {
  got = 0;
  for(i=0; i<cells; i++)  {
   if(xclrp->red > 256) {xclrp->red -= 256; got = 1;};
   if(xclrp->green > 256) {xclrp->green -=256; got=1;};
   if(xclrp->blue > 256) {xclrp->blue -=256; got=1;};
  XStoreColors(dpy,cmap,xclrs,cells);
/*  XInstallColormap(dpy,cmap); */
It will work on any PseudoColor XServer. (hopefully :)
+-o-+--------------------------------------------------------------+-o-+
| o |                \\\-  Brain Inside -///                       | o |
| o |                    ^^^^^^^^^^^^^^^                           | o |
| o | Andre' Beck (ABPSoft) mehl: Andre_Beck@IRS.Inf.TU-Dresden.de | o |
+-o-+--------------------------------------------------------------+-o-+
