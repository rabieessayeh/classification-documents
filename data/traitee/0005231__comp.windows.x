Excerpts from netnews.comp.windows.x: 19-Apr-93 Monthly Question about
XCop.. Buzz Moschetti@bear.com (1055) 
> A button widget, when pressed, will cause a new item to be drawn in the
> Window.  This action clearly should not call XCopyArea() 
> (or equiv) directly; instead, it should register the existence of the
> new item in a memory structure and let the same expose event handler
> that handles "regular" expose events (e.g. window manager-driven
> exposures) take care of rendering the new image. 
Hmmm.... Clearly?  Depends on your programming model.  It is not at all
forbidden to draw outside the context of an expose event.  Certainly any
internal data structures should be maintained such that the visual
appearance would be maintained properly whenever an expose event happens
to be generated.  This doesn't preclude drawing immediately after
updating the datastructures though... 
-Rob 
