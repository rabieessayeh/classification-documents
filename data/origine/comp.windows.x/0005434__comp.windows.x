I tried to e-mail you but it bounced so...
Hi there,
In article <4263@his.UUCP> you write:
>From: sp1henhj@edit (Henrik Balthazar Hjort)
>Subject: PostScript on X-terminal
> I have a problem when I'm using PostScript. When I am working local
>on a SUN SPARCstaton IPC the PostScript works good, but when I connect
>to the SUN from a X-terminal I just get error messages that the
>PostScript cannot connect to the news-display.
> Why doesn't PostScript work on an X-terminal?
> Is there any way to make it work?
It might be that the X terminal doesn't support the "Postscript
Extensions to X" product.  I use the 'dxpsview' program on a 
DECstation 5000 to view postscript files but when I moved to an
NCD X terminal, I couldn't use it any more.  So I ftp'd and
compiled GhostScript (GNU software).  Now we can view postscript
files on our X terminals.
Hope this helps.
Grant
> Henrik "Henrik Hjort" Hjort
Grant Totten, Programmer/Analyst, Trent University, Peterborough Ontario
GTotten@TrentU.CA            Phone: (705) 748-1653   FAX: (705) 748-1246
Take everything in stride.  Trample anyone who gets in your way.
