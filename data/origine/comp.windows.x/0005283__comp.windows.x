In article 54297@slate.mines.colorado.edu, agallagh@slate.mines.colorado.edu (GALLAGHER ANDREA J ) writes:
>[posted for a friend]
>Okay, I looked through the FAQs and didn't see this, but I know its
>come up before...
>XAllocColor is supposed to do the following in order:
>    Try to find an exact match read-only color cell. (within hardware limits)
>    Try to allocate a read-only colorcell and set it to match.
>	and when all else fails, 
>    Return the colorcell with the best match from the read-only colors 
>    already allocated in the colormap.
Where did you hear this?  If it is printed in a book somewhere,
throw away the book.  According to the MIT specs, only the first
2 are true.
Ken Lee, klee@synoptics.com
