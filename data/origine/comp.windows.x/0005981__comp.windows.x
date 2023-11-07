In article <1td5inINNl7m@finch.doc.ic.ac.uk>, ln@doc.ic.ac.uk (Leonidas Nikidis) writes:
|> Hi,
|>    Could someone explain to me what exactly the Xlib functions 
|> XCreateRegion, XPolygonRegion, XPointInRegion do, or to 
|> suggest a ftp site where I can find programs using these functions.
|> PS: The man pages does not explain much ......
|> Thank you,
|> Leo.
|> Leonidas Nikidis : ln@doc.ic.ac.uk	Imperial College, London,UK
|> 					Dept. of Computing
I use those routines in a widget which only redraws exposed areas.
here's a small piece of code that uses those routines
static void Redisplay(pw, ev, region)
XtpManagerWidget pw;
XExposeEvent *ev;
Region region;
/* pp->exposure_region is an XRegion */
XtpManagerPart *pp = &pw->plotter;
pp->exposure_region = XCreateRegion();
   /* region is passed via an expose event */
if(region == NULL)
if (ev->send_event)  /* synthetic event sent by widget it wants a full redraw*/
        exporect.x = pw->core.x;
        exporect.y = pw->core.y;
        exporect.width = pw->core.width;
        exporect.height = pw->core.height;
     else
        exporect.x = ev->x;
        exporect.y = ev->y;
        exporect.width = ev->width;
        exporect.height = ev->height;
stuff deleted      
/* region now contains the exposure region */
        XUnionRectWithRegion(&exporect,pp->exposure_region,pp->exposure_region);
else
        XUnionRegion ( region, pp->exposure_region, pp->exposure_region);
stuff deleted 
/* WE NEED to CLIP on EXPOSE REGION for REDRAWING the GRID */
        XSetRegion(XtDisplayOfObject(pw), pp->plotarea_gc,pp->exposure_region);
stuff deleted 
        /* check to see if child is exposed */
        if (XRectInRegion (pw->plotter.exposure_region,
                         child->core.x ,
                         child->core.y ,
                         child->core.width  ,
                         child->core.height ))
So, I build up a region of exposures so that when I service my container
widget redraw of rectobj children, I only redraw what need to be redrawn.
It works for me, hope this helps you.
Brian
Brian Dealy                |301-572-8267| It not knowing where it's at  
dealy@kong.gsfc.nasa.gov   |            | that's important,it's knowing
!uunet!dftsrv!kong!dealy   |            | where it's not at...  B.Dylan
