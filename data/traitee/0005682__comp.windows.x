Just create the window in the place you want it and set the program
position field in the WM_NORMAL_HINTS property, then map it.
Then, assuming they have a non brain dead window manager, the user can
say whether they want to us program specified positions or not. For
tvtwm the UsePPosition command in the .tvtwmrc will do this.
Now, I'm sure that by the time this message gets out of our local news
timewarp someone will have advised you to set the user position bit in
the WM_NORMAL_HINTS. _Do_not_ do this. It's evil. It's a disservice to
your users. Offler the tusked crocodile god will come in the night and
remove your vital organs with a blunt spoon if you even contemplate
it.
rjc@cogsci.ed.ac.uk			_O_
