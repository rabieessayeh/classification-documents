	I want to press a function key and have a text string appear in an
XmText widget.  When I put
	*XmText.Translations: #augment \n\
		<Key>F1:  insert-string(HELLO)
in my resource file, the translation doesn't happen.  If I put
	*XmText.Translations: <Key>F1:  insert-string(HELLO)
in the file, I get the text string HELLO when F1 is pressed, but no other 
keys work, which makes sense since the default translation mode is "replace".  
	Do I have a syntax problem here, or something deeper?
..Bill Massena (wam3090@yak.boeing.com)
