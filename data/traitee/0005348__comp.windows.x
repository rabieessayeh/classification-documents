#I have a question regarding the processing of program arguments
#such as the -geometry option. Since this is a standard X option, 
#I'm wondering wether I have to parse it manually or whether there
#is some predefined function that will do this for me?
If you are using the Intrinsics, it is parsed for you.  If you are working
at the Xlib level, you can parse it yourself or you can use the following
bit of code.
static XrmOptionDescRec options[] = {
	{"-geometry",	".geometry",	XrmoptionSepArg, (XPointer)NULL}
#define Number(x)	(sizeof(x)/sizeof(x[0]))
XrmParseCommand(db, options, Number(options), "MyApplication", &argc, argv);
Then use XrmGetResource() to retrieve the value and parse it using
XParseGeometry().
It is probably quicker to parse it yourself from argv, however, I much prefer
using the X resource management routines to do this.
Patrick L. Mahan
--- TGV Window Washer ------------------------------- Mahan@TGV.COM ---------
Waking a person unnecessarily should not be considered  - Lazarus Long
a capital crime.  For a first offense, that is            From the Notebooks of
							  Lazarus Long
