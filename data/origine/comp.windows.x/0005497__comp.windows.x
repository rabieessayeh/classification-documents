Hi Guys,
	It has been a long time since I wrote a program using X. I am trying to 
	get myself re-familiarize with X. I would appreciate your help regarding
	the following problem.
	I am trying to compile a simple X program on sun running sunOS 4.1.2. 
	using
	cc -o ex ex.c -lXaw -lXmu -lXt -lXext -lX11 -lm
	I am getting an error
	ld: Undefined symbol
		_get_wmShellWidgetClass
		_get_applicationShellWidgetClass
 The simple program I tried to compile is given below.
#include <stdio.h>
#include <X11/Intrinsic.h>
#include <X11/StringDefs.h>
#include <X11/Xaw/Form.h>
main(argc,argv)
int 	argc;
char	**argv;
	Widget	topLevel;
	Widget	frame;
	topLevel = XtInitialize("ex","Ex",NULL,0, &argc,**argv);
	frame = XtCreateManagedWidget("Form",formWidgetClass,topLevel,NULL,0);
	XtRealizeWidget(topLevel);
	XtMainLoop();
	I got the same error when I tried to build "xpostit" using the Imakefile
	provided with the software.
	I have compiled X programs before (not on this machine, but on other 
	machines running sunOS 4.0 and X11 R4). I did not get this error message
	Can anybody tell me why I am getting these messages.
	I would appreciate if you can email your responses to me at
	azn30@ruts.ccc.amdahl.com.
	Thanks
	Anand
