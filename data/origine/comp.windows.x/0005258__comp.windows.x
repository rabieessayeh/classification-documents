Help!
I'm trying to run dxterm's (DECs' xterm) on a DECstation 5000/240
(Ultrix 4.3, X11R4, Motif 1.1.3) with the DISPLAY variable set to an
Apollo DN2500 (Domain/OS 10.3, X11R4, Motif ?.?).
I get these errors appearing on the DECstation:
> dxterm
X Toolkit Warning: Cannot convert string "<Key>apCharDel        " to type VirtualBinding
X Toolkit Warning: Cannot convert string "<Key>apCopy   " to type VirtualBinding
X Toolkit Warning: Cannot convert string "<Key>apCut    " to type VirtualBinding
X Toolkit Warning: Cannot convert string "<Key>apPaste  " to type VirtualBinding
X Toolkit Warning: Cannot convert string "<Key>apUpBox  " to type VirtualBinding
X Toolkit Warning: Cannot convert string "<Key>apDownBox        " to type VirtualBinding
X Toolkit Warning: Cannot convert string "<Key>apRightBar       " to type VirtualBinding
X Toolkit Warning: Cannot convert string "<Key>apLeftBar        " to type VirtualBinding
Segmentation fault
Any ideas? Is it a Motif problem...are the DEC and Apollo versions of Motif
incompatible? Or something to do with XKeysymDB?
(xterms run fine on DEC displaying on Apollo..arggh)
I need to run dxterm because the package we are using on the DEC's, Oracle Case,
uses dxterm by default, and we have a lab of Apollo workstations we would like
to run Oracle from.
Andrew "Alf" Leahy, alf@st.nepean.uws.edu.au
Andrew "Alf" Leahy                  phone: (047) 360771 (W) irc: pepsi-alf
Uni. Western Sydney, Nepean.        Remote-email: alf@st.nepean.uws.edu.au
Sydney, Australia.                  Local-email: alf
