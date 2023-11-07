How can I capture ButtonPress/ButtonRelease events in multiple clients?
I want to know if the user is still at the display before locking the screen.
I can get  KeyPress/KeyRelease and Pointer motion events, but if the user
is pressing the mouse button in the same location (the mouse doesn't move)
I can't capture the events.  
The O'Reilly Xlib Programming Manual (vol. 1) says on page 252;
   "Only one client can select button events on any one window at one time, 
    due to the grab that automatically takes place."  
Any help would be appreciated.
Deryl Steinert
dus@ornl.gov 
