I've written an application for SparcStation 2 GX+, under OpenWindows 3.0.
The application uses XView stuff to create my window, and the SUN XGL
graphics library for rendering into the Canvas.
The application does real-time 2-D animation, but it does not update the
the display fast enough.
I'm using notify_set_itimer (XView call) to periodically kick off my
update routine, and it's not happening fast enough. I want it to
update 25 times / second. It's only doing about 11. Also, it appears to
be compute bound, because if I run anything else while my appplication is
up, the update rate slows down even more.
Any ideas ?
Thanks.
