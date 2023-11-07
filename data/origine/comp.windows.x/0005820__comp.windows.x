In article <C6rsJF.EM0@ccu.umanitoba.ca>, roholdr@ccu.umanitoba.ca (R Ross Holder Jr) writes:
|> Ever since I started to use Xwindows (which is to say recently) I've
|> accumulated a few questions about X-applications.  Three examples follow:
|> 1) It was recently mentioned on comp.os.linux that there exists a post-
|>    script viewer.  I am interested in this and any X-editor that is an
|>    improvement on Xedit (which I find annoying).
Try to get axe - It's a wonderful X based editor and much simpler to use than
emacs what is a overkill. Of course, emacs is no editor but a religion.
|> 2) At one point I was the proud owner of an Amiga (and have since upgraded
|>    to a '386-33).  Workbench (the point-and click interface) used ".info"
|>    files to store the data for icons associated with applications on a given
|>    volume.  I have noticed no such architecture anywhere under linux; how
|>    does Xwindows associate icons with applications?  Can one edit icons or
|>    generate new ones for applications somehow?  (If it makes a difference
|>    I'm running 'twm'.)
1) Don't call going from an Amiga to a IBM 'upgrade'
2) The Amiga Workbench did the job of a Desktop manager, and there is no
   really amazing good X Desktop manager in the Public Domain.
   (I'm currently writing one... but it's in very early stage)
3) xdtm may be a medium good replacement.
4) X associates icons with nothing. A number of X Window Managers associate
   icons with windows, in a way to ease window management.
   But this has nothing to do with icons of a Desktop Manager application.
5) The tool bitmap is there for simple icon drawing.
|> 3) I've noticed some people have somehow discovered a way to display .GIF
|>    (or some kind of picture files) in the background, either replacing or
|>    overlapping some the usual grey background employed by Xwindows.  I heard
|>    this was done using some application, but I don't recall what it was.
xv -root -max -quit whatever-image-file
+-o-+--------------------------------------------------------------+-o-+
| o |                \\\-  Brain Inside -///                       | o |
| o |                    ^^^^^^^^^^^^^^^                           | o |
| o | Andre' Beck (ABPSoft) mehl: Andre.Beck@IRS.Inf.TU-Dresden.de | o |
+-o-+--------------------------------------------------------------+-o-+
