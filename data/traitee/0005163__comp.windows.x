> Distribution: comp
Please don't misuse newsgroup hierarchy names as distributions.
In article <hess.734959172@swt1>, hess@swt1.informatik.uni-hamburg.de (Hauke Hess) writes:
> I wonder if it is possible for a parent window to paint over the area
> of its childs.
Yes, but it's not an attribute of the window; it's an attribute of the
GC used to do the drawing.  Set the subwindow-mode to IncludeInferiors
rather than the default ClipByChildren.
					der Mouse
				mouse@mcrcim.mcgill.edu
