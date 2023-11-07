In article <hess.734959172@swt1>, hess@swt1.informatik.uni-hamburg.de (Hauke Hess) writes:
|> Hi,
|> I wonder if it is possible for a parent window to paint over the area of
|> its childs. If it is not, then how could it be possible to implement a 
|> rubberband across multiple xwindows to select the objects that are
|> displayed one in each window?
|> Hauke
If you specify the rootwindow when you are creating your GC. You may 
use Xlib to draw over multiple windows. 
I have an application that does something similar for rubber banding.
 curs_move = XCreateFontCursor (disp_data, XC_crosshair);
 geom_vals.foreground     = blck_pixl ^ grey_dark;
 geom_vals.plane_mask     = AllPlanes;
 geom_vals.line_width     = 0;
 geom_vals.function       = GXxor;
 geom_vals.subwindow_mode = IncludeInferiors;
 evnt_mask= GCForeground | GCPlaneMask | GCLineWidth | GCFunction
                                                     | GCSubwindowMode;
 geom_gcon= XCreateGC (disp_data, root_iden, evnt_mask, &geom_vals);
later I can move the rubber band or bands using the following logic
 void Tselect::move_bands (int delt_xloc, int delt_yloc)          /****/
stuff deleted ...
            XDrawRectangle (disp_data,   root_iden,  geom_gcon,
                            sele_pntr->rootx, sele_pntr->rooty,
                            sele_pntr->xlnth, sele_pntr->ylnth); undraw old one
            sele_pntr->papax+= delt_xloc;
            sele_pntr->papay+= delt_yloc;
            sele_pntr->rootx+= delt_xloc;
            sele_pntr->rooty+= delt_yloc;
            XDrawRectangle (disp_data,   root_iden,  geom_gcon, 
                            sele_pntr->rootx, sele_pntr->rooty,
                            sele_pntr->xlnth, sele_pntr->ylnth); draw new one
more stuff deleted
  hope this helps
Brian Dealy                |301-572-8267| It not knowing where it's at  
dealy@kong.gsfc.nasa.gov   |            | that's important,it's knowing
!uunet!dftsrv!kong!dealy   |            | where it's not at...  B.Dylan
Brian Dealy                |301-572-8267| It not knowing where it's at  
dealy@kong.gsfc.nasa.gov   |            | that's important,it's knowing
!uunet!dftsrv!kong!dealy   |            | where it's not at...  B.Dylan
