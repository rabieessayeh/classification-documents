|Even 24Bit TrueColor machines are in most cases running an emulated
|8 bit PseudoColor visual, only to get standard x clients, motif apps and
|thelike to run. I strongly suppose you to emulate at least:
|> 24 Bit TrueColor. Should be no problem, only some translation. Rounding
|  should not make big misfits
Depends on the nature of the "rounding."  X allows the user to do bit
arithmetic on pixel values, (i.e.,  XOR foreground and backgroun pixel
values together to calculate a foreground color that when used with a
function of GXxor fill change foreground to background and vice-versa).
If your rounding does not preserve these types of calculations then 
clients that use them will break.
	Ken
Kenneth Whaley			 (408) 748-6347
Kubota Pacific Computer, Inc.	 Email: whaley@kpc.com
2630 Walsh Avenue
Santa Clara, CA.  95051
