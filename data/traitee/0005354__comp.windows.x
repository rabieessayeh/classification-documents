Mark D. Collier (mark@trident.datasys.swri.edu) wrote:
: Does anyone know what is available in terms of automated testing
: of X/Motif applications. I am thinking of a system which I could
: program (or which could record events/output) with our verification
: test procedures and then run/rerun each time we do regression
: testing. I am interested in a product like this for our UNIX
: projects and for a separate project which will be using OpenVMS.
A question like this is answered in the FAQ, about sharing X windows.
One of the answers is XTrap, a record and playback extenstion to X.  You
can find it at export.lcs.mit.edu:/contrib/XTrapV33_X11R5.tar.Z.
Does anyone know of a program which doesn't require an X extension?  Most
the the X servers we have at work have vendor extensions which we can't
modify, so XTrap doesn't help up.  There is X conferencing software at
mit, but I don't know how easy it would be to modify it to do record and
playback.
Any help would be appreciated.
| Bill Poitras      | Molecular Simulations Inc. | Tel (408)522-9229      |
| bill@msi.com      | Sunnyvale, CA 94086-3522   | FAX (408)732-0831      |
|FTP Mail           |mail ftpmail@decwrl.dec.com | Offers:ftp via email   |
|                   |Subject:<CR>help<CR>quit    |                        |
