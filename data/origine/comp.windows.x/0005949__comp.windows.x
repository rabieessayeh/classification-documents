In article <1t851o$mrd@ux1.cso.uiuc.edu> kerr@ux1.cso.uiuc.edu (Stan Kerr) writes:
>benj@ossa.hq.nasa.gov (Benjamin Jones) writes:
>>I've run into a bit of a snag while trying to get Mac X up and running and would appreciate
>> stuff deleted
>>are NOT on my local net here, but the above problem holds true for non-local Suns as well.
>I tried to send this as private mail, but mail to benj@ossa.hq.nasa.gov was
>rejected, so here it is:
same here
>Here is an extract from the README file that comes with MacX:
>Users of remote commands with Sun machines may find that their remote commands 
>appear to do nothing and there is no output from the Sun machine.  This is due 
>to a feature of the Sun rexecd network daemon which quietly disconnects from 
>requesting machines that are not known to the Sun|s network address (/etc/hosts
>or NIS hosts) database.  To successfully use remote commands with a SunOS-based
>machine, there must be an entry in the network address database for the 
>Macintosh which is running MacX.
I received similar information/advice about what appears to be the same problem 
Benjamin has (and I still have).
NIS has all the information about the Macs
(I even put explicit entries in /etc/hosts to no avail).
Monitoring with 'snoop' on my Classic, the initial REXEC packet is sent to
the the SUN, which sends something to the correct Mac, but nothing appears
at the Mac.
'rexecd' is number one suspect, but it's more suble than the README suggests and
I haven't yet looked into it further.
>Stan Kerr    
>Computing & Communications Services Office, U of Illinois/Urbana
>Phone: 217-333-5217  Email: stankerr@uiuc.edu   
callum.downie@brunel.ac.uk
Faculty of Technology, Brunel University, Uxbridge, UB8 3PH, UK
4.003 Die meisten Saetze und Fragen, welche ueber philosophische Dinge geschrieben worden sind, sind nicht falsch, sondern unsinnig.
7     Wovon man nicht sprechen kann, darueber muss man schweigen.
