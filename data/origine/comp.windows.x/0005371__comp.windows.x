I think you tried to send me a message re: the animation query
I posted to comp.windows.x. I've appended what I received below.
If you can remember what you typed, I'd appreciate another attempt!
Derek
| Derek C. Richardson    | Tel: (0223) 337548 x 37501     |
| Institute of Astronomy | Fax: (0223) 337523             |
| Cambridge, U.K.        |                                |
| CB3 0HA                | E-mail: dcr@mail.ast.cam.ac.uk |
----- Begin Included Message -----
From aol.com!Postmaster Thu Apr 22 04:47:31 1993
Received: by cast0.ast.cam.ac.uk (UK-Smail 3.1.25.1/2)
  id <m0nlsG0-0001MPC@cast0.ast.cam.ac.uk>; Thu, 22 Apr 93 04:47 BST
Received: from sco1.prod.aol.net by hp81.prod.aol.net with SMTP
	(1.37.109.4/16.2) id AA19251; Wed, 21 Apr 93 23:49:16 -0400
From: Postmaster@aol.com
X-Mailer: America Online Mailer
To: dcr@mail.ast.cam.ac.uk
Subject: Returned Mail Unknown Member 
Date: Wed, 21 Apr 93 23:46:36 EDT
Message-Id: <9304212346.tn60988@aol.com>
Status: R
 The mail you sent could not be delivered; it was addressed to an unknown user.The text you sent follows...
Hi, I'm new to this group so please bear with me!
Two years ago I wrote a Sunview application for fast animation
of raster files. With Sunview becoming rapidly obselete, I've
finally decided to rewrite everything from scratch in XView.
I put together a quick test, and I've found that XPutImage()
is considerably slower (factor of 2 on average?) than the
Sunview command pw_rop() which moves image data from memory
pixrects to a canvas. This was on a Sparc IPX. It seems that:
(1) the X protocol communication is slowing things down; or
(2) XPutImage is inefficient...or both! My question is, what
is the fastest way in X11R5 to dump 8 plane image data to
a window? Can I take advantage of the fact that the client is
running on the same machine as the server? Or am I stuck with
XPutImage() (in which case I might as well give up now...)?
All help appreciated...thanks!
Derek
| Derek C. Richardson    | Tel: (0223) 337548 x 37501     |
| Institute of Astronomy | Fax: (0223) 337523             |
| Cambridge, U.K.        |                                |
| CB3 0HA                | E-mail: dcr@mail.ast.cam.ac.uk |
----------------------- Headers ------------------------
>From uupsi7!expo.lcs.mit.edu!xpert-mailer Wed Apr 21 23:46:29 1993 remote from aolsys
Received: from uupsi7 by aolsys.aol.com id aa23625; Wed, 21 Apr 93 23:39:41 EDT
Received: from EXPO.LCS.MIT.EDU by uu7.psi.com (5.65b/4.0.071791-PSI/PSINet) via SMTP;
        id AA16562 for ; Wed, 21 Apr 93 19:44:00 -0400
Received: by expo.lcs.mit.edu; Wed, 21 Apr 93 13:58:06 -0400
Received: from ENTERPOOP.MIT.EDU by expo.lcs.mit.edu; Wed, 21 Apr 93 13:58:05 -0400
Received: by enterpoop.MIT.EDU (5.57/4.7) id AA15705; Wed, 21 Apr 93 13:57:34 -0400
Received: from USENET by enterpoop with netnewsfor xpert@expo.lcs.mit.edu (xpert@expo.lcs.mit.edu);contact usenet@enterpoop if you have questions.
To: xpert@expo.lcs.mit.edu
Date: Wed, 21 Apr 1993 15:46:20 GMT
From: dcr@mail.ast.cam.ac.uk (Derek C. Richardson)
Message-Id: <1993Apr21.154620.16330@infodev.cam.ac.uk>
Organization: Institute of Astronomy, Cambridge
Reply-To: dcr@mail.ast.cam.ac.uk
Subject: Animation with XPutImage()?
----- End Included Message -----
