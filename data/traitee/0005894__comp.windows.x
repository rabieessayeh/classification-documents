After looking at the scaling code I realized the follwing:
  1) My problem with the resolution 100x100 foints is due to an installation 
     problem.
  2) That the X server or font server will rescale the best font it can find
     to meet your requirements.  
     This means that if you server return a response like the following
     -adobe-helvetica-medium-o-normal--0-0-75-75-p-0-iso8859-1
     You can ask for the follwogin:
        -adobe-helvetica-medium-o-normal--14-100-90-90-p-0-iso8859-1
     and it will generate it for you.  You should try to always use 
     known pixel sizes.  
Bill Jones
