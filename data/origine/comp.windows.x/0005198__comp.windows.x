hess@swt1.informatik.uni-hamburg.de writes:
>> I wonder if it is possible for a parent window to paint over the area of
>> its childs. If it is not, then how could it be possible to implement a 
>> rubberband across multiple xwindows to select the objects that are
>> displayed one in each window?
Use a GC with the subwindow_mode attribute set to IncludeInferiors. The
default is ClipByChildren. However, beware if any of the children are of
a different depth to the parent; the semantics of this are undefined by the
protocol.
 	Gerard O'Driscoll (gerard.odriscoll@dps.co.uk)
 	Du Pont Pixel Systems Ltd.
