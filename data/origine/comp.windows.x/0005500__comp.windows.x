# I think the original post was searching for existing implementations of
# f.i. Gouroud-shading of triangles. This is fairly complex to do with plain
# X. Simpler shading models are implemented already, f.i. in x3d (ask archie
# where to get the latest version).
# For Gouroud, a fast implementation will be possible utilizing some extension
# only, either MIT-SHM to do the shade in an image and fast update the window
# with it, or PEX/OpenGL which should be able to shade themselves. The portable
# 'vanilla X' way would be to shade in a normal XImage and use XPutImage(),
# what would be good enough to do static things as f.i. fractal landscapes
# or such stuff.
# To speak about POVRay, the X previewer that comes with the original source
# package is not that good, especially in speed, protocol-friendlyness and
# ICCCM compliance. Have a look on x256q, my own preview code. It is on
# 141.76.1.11:pub/gfx/ray/misc/x256q/
# The README states the points where it is better than xwindow.c from
# POVRay 1.0
The version I have is using the x256q code instead of the default X Windows
code.  I have it currently running on a DEC Alpha running OpenVMS AXP and
so far have been pretty impressed.  The only "side-effect" of x256q is that
it requires xstdcmap -best be run before it will work, annoyning but not a
show stopper.
Patrick L. Mahan
--- TGV Window Washer ------------------------------- Mahan@TGV.COM ---------
Waking a person unnecessarily should not be considered  - Lazarus Long
a capital crime.  For a first offense, that is            From the Notebooks of
							  Lazarus Long
