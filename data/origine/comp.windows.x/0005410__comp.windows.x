I am having problems with a  Motif application that when run on another machine
(with different X paths, etc) can't find the XKeysymDB file.   This causes a large
warning output:
Warning: translation table syntax error: Unknown keysym name: osfActivate
Warning: ... found while parsing '<Key>osfActivate:ManagerParentActivate()'
Warning: translation table syntax error: Unknown keysym name: osfCancel
Warning: ... found while parsing '<Key>osfCancel:ManagerParentCancel()'
Warning: translation table syntax error: Unknown keysym name: osfSelect
Warning: ... found while parsing '<Key>osfSelect:ManagerGadgetSelect()'
etc.
as the file is in a different location, but Xt seems to only look for it in
the place where it is on the machine the app was compiled on.  Is there any
way to read the XKeysymDB manually with an X/Xt call so that additions to
the XKeysymDB can be distributed with the application ?  I have used trace(1)
to find out what was going on, but I need a fix so that these translations in
the application can be recognised.
--tim
  Tim Liddelow                                          for(;;) fork();
  Systems Programmer
  Centre of Advanced Technology in Telecommunications   My brain on a bad day.
  CITRI, Melbourne, Australia                           
  internet : tim@kimba.catt.citri.edu.au                
  Phone : +61 3 282 2455   Fax : +61 3 282 2444	        
