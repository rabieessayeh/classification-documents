In article <735259869.13021@minster.york.ac.uk>, cjhs@minster.york.ac.uk writes:
> The application creates window with a button "Quit" and "Press me".
> The button "Press me" pops up a dialog box. The strange feature of
> this program is that it always pops up the dialog box much faster the
> first time. If I try to pop it up a 2nd time (3rd, 4th .... time), 
> it is *much* slower.
The shell is waiting for the window-manager to respond to its
positioning request.  The window-manager is not responding because
it thinks the window is already in the right place.
Exactly *why* the two components get into this sulk is unclear to
me; all information greatly received.
Bryan.
