In article <1993Apr20.132914.907@aio.jsc.nasa.gov> mccoy@gothamcity.jsc.nasa.gov writes:
>In article qfe00WB2QzZ7EZ@andrew.cmu.edu, Wilson Swee <ws8n+@andrew.cmu.edu> () writes:
>|>    I have a piece of X code that compiles fine on pmax-ul4, pmax_mach, as
>|>well as sun4_mach, but whenever it compiles on sun4_411, it gives me 
>|>undefined ld errors:
>|>_sin
>|>_cos
>|>_pow
>|>_floor
>|>_get_wmShellWidgetClass
>|>_get_applicationShellWidgetClass
>|>The following libraries that I linked it to are:
>|>-lXaw -lXmu -lXt -lXext -lX11
>|>The makefile is generated off an imake template.
>|>Can anyone give me pointers as to what I'm missing out to compile on
>|>a sun4_411?
>Well, the first 2 are easy.  You need the math library.  Try adding -lm after
>-lX11.  Don't know if that's the whole problem but it's a start.
I "think" you should try linking to /usr/lib/libXmu.a instead of 
-lXmu. At least that solved the problem for me!
