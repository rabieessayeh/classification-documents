Does XDM work with DECnet? I have an Ultrix machine running both TCP/IP
and DECnet. I have a number of X-terminals hanging off the Ultrix host also
running TCP/IP and DECnet. Presently I am using XDM for the login procedure
on the X-terminals using TCP/IP. Since XDM is basically just an X-windows
client, shouldn't I be able to run XDM on the DECnet protocol tower as well?
My first inclination is that XDM is not your typical X client. It is making
TCP/IP specific socket calls. In this case the answer would be no; you can
not run XDM over DECnet. Is this right or not? Any feedback is appreciated.
Thanks.
