#Does XDM work with DECnet? I have an Ultrix machine running both TCP/IP
#and DECnet. I have a number of X-terminals hanging off the Ultrix host also
#running TCP/IP and DECnet. Presently I am using XDM for the login procedure
#on the X-terminals using TCP/IP. Since XDM is basically just an X-windows
#client, shouldn't I be able to run XDM on the DECnet protocol tower as well?
XDM is not just an X Window client.  XDM has its own protocol (XDMCP) that
operates of UCP on port 177.  It does provide a Login window which is an
X Window Client.  As to using DECnet protocol.  Looking through the source
for XDM from X11R5 that I have here, it seems that the bare bones code is
there but not completely there.
#My first inclination is that XDM is not your typical X client. It is making
#TCP/IP specific socket calls. In this case the answer would be no; you can
#not run XDM over DECnet. Is this right or not? Any feedback is appreciated.
#Thanks.
From my look at the source, it seems you cannot run it over DECnet as shipped
with X11R5.
Patrick L. Mahan
--- TGV Window Washer ------------------------------- Mahan@TGV.COM ---------
Waking a person unnecessarily should not be considered  - Lazarus Long
a capital crime.  For a first offense, that is            From the Notebooks of
							  Lazarus Long
