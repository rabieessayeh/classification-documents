In article <1993Apr8.200441.9423@jwminhh.hanse.de>, wieck@jwminhh.hanse.de (Jan Wieck) writes:
|> mbheprg@PROBLEM_WITH_INEWS_GATEWAY_FILE (Raju Gurung) writes:
|> : Jeff Haferman (haferman@icaen.uiowa.edu) wrote:
|> : > Can somebody point me to source code for dumping the contents of
|> : > an X-window into a color postscript file?  I have written
|> : > an app which brings up an X-window, and I want (at the click
|> : > of the mouse) to dump the window into a postscript file.
|> : I use xwd and xwd2ps. To do it from within a program I use
|> : xwd -id xxxxx where xxxxx is the window id obtained from XtWindow(widget).
|>     He asked for sources.
|>     The   portable    bitmap    tools    from    Jef    Poskanzer
|>     <jef@well.sf.ca.us>  include  filters  to  do  that (and much
|>     more).
BTW, the X11 tools come as sources. The sillyness of most vendors lets you
stuck with binaries.
Anyway, have a look onto xgrab/xgrabsc. It does the IMHO best job for
this, including compression.
+-o-+--------------------------------------------------------------+-o-+
| o |                \\\-  Brain Inside -///                       | o |
| o |                    ^^^^^^^^^^^^^^^                           | o |
| o | Andre' Beck (ABPSoft) mehl: Andre_Beck@IRS.Inf.TU-Dresden.de | o |
+-o-+--------------------------------------------------------------+-o-+
