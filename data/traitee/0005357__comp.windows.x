In article <BADING.93Apr21134939@athene.cs.tu-berlin.de>, bading@cs.tu-berlin.de (Tobias 'Doping' Bading) writes:
|> try this after XCreateWindow:
|> #include <X11/Xutil.h>
|> Display display;
|> Window window;
|>   XSizeHints *xsizehints = XAllocSizeHints ();
|>   xsizehints->flags = USPosition | USSize;	/* or = PPosition | PSize */
|>   xsizehints->x = 42;
|>   xsizehints->y = 42;
|>   xsizehints->width = 100;
|>   xsizehints->height = 100;
|>   XSetWMNormalHints (display, window, xsizehints);
|>   XFree (xsizehints);
|> These hints tell the window manager that the position and size of the window
|> are specified by the users and that the window manager should accept these
|> values. If you use xsizehints->flags = PPosition | PSize, this tells the window
|> manager that the values are prefered values of the program, not the user.
|> I don't know a window manager that doesn't place the window like you prefer if
|> you specify the position and size like above.
You are right but PLEASE DON'T DO THIS.  It makes my brain hurt.
USPosition and USSize should ONLY be set if the USER specified the
position and size.
You say: "Tom, don't blow a gasket, what's the harm?"
Some window managers do very different things (besides positioning the window)
when they see USPosition rather than PPosition.
Tom LaStrange        toml@boulder.ParcPlace.COM
