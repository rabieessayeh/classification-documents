[I am posting this for a friend whose news service is "fubared as usual".
 I will forward replies to him, or if you want to try to reply directly,
 try: Return-Path: <uunet!sunfse.ese.lmsc.lockheed.com!mcfar>    PR ]
I have an event handler working for a ButtonPressMask like:
  XtAddEventHandler( plot_data->display, ButtonPressMask, FALSE,
                    show_mouse_position, plot_data);
but I would like to be able to have two types of actions: one to occur
with the left mouse, the other the right, and perhaps one with the
middle.  So my event handler would look more like:
  XtAddEventHandler( plot_data->display, left-ButtonPressMask, FALSE,
                    show_left_mouse_position, plot_data);
  XtAddEventHandler( plot_data->display, right-ButtonPressMask, FALSE,
                    show_right_mouse_position, plot_data);
However I don't know how to make my left-ButtonPressMask.  There didn't seem
to be one in the event mask lists I had on hand (although Button1MotionMask
looked promising).  My references also mentioned using "|" to or two
mask events.  Can you  use "&" to and two masks?  Would I want to in this
case? 
Any help would be appreciated.
Thanks, 
