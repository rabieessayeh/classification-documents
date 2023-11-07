In article <735516045.1507@minster.york.ac.uk>, cjhs@minster.york.ac.uk writes:
|> cjhs@minster.york.ac.uk wrote:
|> : Help: I am running some sample problems from O'Reilly volume 4,
|> : Xt Intrisics Programming Manual, chapter 3. popup
|> : dialog boxes and so on.
|> : In example 3.5, page 76 : "Creating a pop-up dialog box"
|> : The application creates window with a button "Quit" and "Press me".
|> : The button "Press me" pops up a dialog box. The strange feature of
|> : this program is that it always pops up the dialog box much faster the
|> : first time. If I try to pop it up a 2nd time (3rd, 4th .... time), 
|> : it is *much* slower.
|> : Has anyone any experience with these sample programs, or why I get
|> : this behaviour - fast response time for the first time but slow response
|> : time from 2nd time onwards ?
|> : Anyone can give me some ideas on how to program popups so that each time
|> : they popup in reasonable fast response time ?
|> : Thankyou - Shirley
|> Thanks to those who responded.
|> We were able to prevent this behaviour by two methods:
|> 1) running twm rather than olwm
|> 2) keeping olwm, but putting "wmTimeout: 10" in the resources
|> It has been suggested that the difficuty was something to do with the
|> window manager positioning the popup window. Any guru who can analyse
|> what is going on from this information, please post and let us know.
|> Thanks -- Shirley
I ran in to this problem I while ago, and from what I remember you should use
XtTranslateCoordinates etc. after realizing the main widget to calculate
the location of the popup, then use something like XtVaSetValues on the
popup widgets before ever using them.  Calling SetValues repeatedly (e.g.
every time something pops up) seems to be what slows you down.  I never
delved deep enough to figure out exactly why though...
Jeremy Payne
UIUC Neuroscience program /
College of Medicine
jrpayne@uiuc.edu
