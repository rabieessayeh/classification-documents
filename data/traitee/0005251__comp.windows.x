I have a problem where an Athena strip chart widget is not calling it's
get value function.  I am pretty sure this is happening because I am
not using XtAppMainLoop, but am dealing with events via sockets.  (ya ya).
Anyway, I want to cause a timeout so that the strip chart widget(s) will
call their get value callback.  Or if someone knows another FAST way around
this (or any way for that matter) let me know.  I cannot (or I don't think)
call the XtNgetValue callback myself because I don't have the value for
the third parameter of the get value proc (XtPointer call_data).  
In other words, I want to force a strip chart widget to update itself.
Any ideas anyone?  
Christopher R. Bailey            |Internet: baileyc@dendrite.cs.colorado.edu
University of Colorado at Boulder|CompuServe: 70403,1522
Ride Fast, Take Chances!
