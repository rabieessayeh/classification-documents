Excerpts from netnews.comp.windows.x: 15-May-93 Re: COLORS and X windows
(A.. John Cwikla@morrison.wri (4620) 
> The problem is that we need solutions for applications now.  And although 
> I would love to have most of the things mentioned here, somebody has to write 
> it. 
What I'd like to see is this scenario: 
Each widget, view, whatever, describes it's colors via a palette. 
Palettes can be shared and they only contain descriptive information. 
They are not directly tied to the object that uses them.  Palettes are
held in the server.  A palette can accomadate, up to, the number of
hardware color cells of color descriptors. 
When the input focus is in a particular widget, that widget has access
to all of the colors that are described in its associated palette.  ALL
A widget specifies a color for imaging by providing an index (pixel)
into its associated palette. 
The bold part above is hard and would need to be done in the server. 