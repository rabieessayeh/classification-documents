I've spent the past week tearing my hair out, trying to get the output of
a piped "tail -f" to end up in a widget.  I've managed to make it work in
some ugly ways, but either a) X blocks on the tail and won't allow user
input, b) the "tail -f" functions like just "tail" and doesn't follow the
expansion of the file, c) the "tail -f" doesn't die after I've closed
the pipe and destoryed the widget, or d) pclose() blocks forever waiting
for tail to die.
	I _know_ this code has to exist.  Anybody have it?  A general
popen() case would be perfered but at this point I'll take anything...
Thanks.
Greg Knauss (greg@quotron.com)                    "Llamas, dammit!  Llamas!"
