I am trying to write an image display program that uses
the MIT shared memory extension.  The shared memory segment
gets allocated and attached to the process with no problem.
But the program crashes at the first call to XShmPutImage,
with the following message:
X Error of failed request:  BadShmSeg (invalid shared segment parameter)
  Major opcode of failed request:  133 (MIT-SHM)
  Minor opcode of failed request:  3 (X_ShmPutImage)
  Segment id in failed request 0x0
  Serial number of failed request:  741
  Current serial number in output stream:  742
Like I said, I did error checking on all the calls to shmget
and shmat that are necessary to create the shared memory
segment, as well as checking XShmAttach.  There are no
problems.
If anybody has had the same problem or has used MIT-SHM without
having the same problem, please let me know.
By the way, I am running OpenWindows 3.0 on a Sun Sparc2.
Thanks in advance--
John C.
