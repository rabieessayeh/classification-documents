In article <1roouu$gdj@tuegate.tue.nl> lennart@blade.stack.urc.tue.nl (Lennart Benschop) writes:
>I am looking for a  program to draw various kinds of diagrams on my Linux
>system.
>- It must be free.
>- It must run on standard (monochrome) X with a small screen size (800x600)
>  No motif/openlook etc.
>- It must compile under Linux with gcc/g++. Most generic unix software
>  works ok.
>- It must produce postscript files that I can include into LaTeX documents
>  with dvips. Or just tell me another free program that converts one
>  of the supported formats to ps.
>- It must produce drawings that are larger than the window size (scrollable).
>I know of several such programs, idraw, xfig. tgif. I have
>no experience with any of them. Features I would like in the programs are.
>- ability to draw circles, arcs, straight lines, boxes and arrows.
>- support for both dashed and solid line styles for all of these objects.
>- support for texts in any size.
>- ability to move/copy/resize/rotate any part of the drawing.
>- ability to turn any part of the drawing into a library component
>  (e.g. a transistor symbol composed of three lines, an arrow and a circle)
>- any aid (numeric coordinates, screen grid) to align parts of the drawing.
>- less essential, but in fact very handy: preservation of connection.
>  If I move one part of the drawing, the lines that connect that part to the
>  rest of the drawing, stay connected.
>Ideally I want the tool so general and flexible that it is comfortable to
>draw electronic schematics, flow charts, logic diagrams, data flow diagrams
>and block diagrams with it. 
>I just want to know which of the programs offer which of the features on my
>whishlist and are there any other programs? How demanding are the programs
>with respect to disk space, memory and CPU usage? Are any of the programs
>known to work on Linux with monochrome X?
In the list you mentioned, tgif handles everything except rotation and
any size text.  It only supports 90 degrees rotation.  Currently, it
supports 11 (X11R4 standard) font sizes.  However, it allows arbitrary
scaling of the entire drawing.  Effectively, it allows any font sizes, but
you can only have 11 different sizes per drawing.
Tgif takes up 850K (compiled with -O option) on a SPARCstation.  I was told
that it compiles under Linux, but I haven't tried it yet.  It works with
both color and monochrome X.
Bill Cheng // UCLA Computer Science Department // (310) 645-8328
3564-C Boelter Hall // Los Angeles, California 90024 // USA
william@CS.UCLA.EDU      ...!{uunet|ucbvax}!cs.ucla.edu!william
