>>>>> On 12 May 93 12:46:17, raistlin@uni-paderborn.de (Markus Koch) said:
Markus> NNTP-Posting-Host: samos.uni-paderborn.de
Markus> Hello everybody out there !
Markus> I'm trying to compile X11R5pl23 and Motif 1.2.1 on a HP running
Markus> HP-UX 8.05. But it' seems to be not very succesful, because 
Markus> I have only hp.cf config-files for HP-UX 7.0. 
Markus> I tried standard cc and X was compiled with a lot of warnings.
Markus> The motif applications are compiled quite well, but they won't run.
Markus> I receive the XKeysymDB error which is reported in FAQ, but
Markus> I cannot fix it. The XKeysymDB-file is at the right location and it
Markus> works fine under SunOS.
Markus> Probably I have started the compilation Prozess only with a wrong
Markus> config-file.
Markus> Please help me !
Markus>   
Markus> Thanx in advance 
Markus>   Markus
If you installed X lib Xt by redefining ProjectRoot, you will find that
 during the install it recompiles one of the files in X lib that does the
search for XKeysmDB and embeds the search path for the file based on whatever
ProjectRoot was defined. TO confirm this what happened, because I'm 
guessing, go to mit/lib/X and do
strings XStrKeySym.o | egrep XKeysymDB
-Guy Singh,                 IXI            Internet: guy@x.co.uk
                            Vision Park    UUCP:     guy@ixi.uucp
                            Cambridge      Bang:     ...!uunet!ixi!guy
                            CB4 4ZR, UK    Tel:      +44 223 236 555
