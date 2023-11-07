In article <1993Apr20.105725@narya.gsfc.nasa.gov> 
   dealy@narya.gsfc.nasa.gov (Brian Dealy - CSC) writes:
>Anyone know how an application can retrieve the name of the font from
>an application given an XFontStruct *? 
>Would XGetFontProperty work if I passed XA_FONT_NAME? 
>anyone know details of this?  Thanks in advance.
>Brian
>Brian Dealy                |301-572-8267| It not knowing where it's at  
>dealy@kong.gsfc.nasa.gov   |            | that's important,it's knowing
>!uunet!dftsrv!kong!dealy   |            | where it's not at...  B.Dylan
Try this:
char *name=NULL;
unsigned long value;
if(XGetFontProperty(font, XA_FONT, value)) 
    name=XGetAtomName(dpy, value);
where dpy is your Display connection and font your XFontStruct pointer.
Alan Richardson,                             * "You don't have to be *
School of Maths & Physical Sciences,         *  old to be wise"      *
Univ. of Sussex, Brighton BN1 9QH, ENGLAND   * ******Judas Priest*****
UK: mppa3@uk.ac.sussex.syma         elsewhere: mppa3@syma.sussex.ac.uk
