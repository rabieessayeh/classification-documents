You are right in supposing that the problem is with the XmNcolormap
(XtNcolormap for truly literate beings) not being set.  What you want
to do is start your application with your new colormap.  This can be a
chicken and egg sort of problem, however.  If you look at the Xt FAQ
there is an example that should show how it can be done.  If not, let
me know and maybe I can improve the example.
--pete
Pete Ware					ware@cis.ohio-state.edu
CIS Dept, Ohio State University			w/ (614) 292-7318
228 Bolz Hall, 2036 Neil Ave.			h/ (614) 538-0965
Columbus, OH 43210
