>>>>> In article <1qvir1$idi@lll-winken.llnl.gov>, dale@wente.llnl.gov (Dale M. Slone) writes:
dale> I found an oddity with our SGI Indigo (MIPS R3000 chip).
dale> When xlock +nolock is running, and I am working remotely
dale> or in batch (at) mode, the runtime of my programs (as timed
dale> by using clock() in the code itself) is ~25% slower than if
dale> xlock is NOT running.  No other processes seem to affect my
dale> runtimes, yet this is very consistent!
Unless you run `xlock -mode blank`, xlock consumes CPU time generating
the nice animated display. The code you are running is competing with
xlock for the CPU. If you run top (via a remote login), you can really
see what is going on.
 Scott Henry <scotth@sgi.com> / Help! My disclaimer is missing!
 Networking Services,        / GIGO *really* means: Garbage in, Gospel Out
 Silicon Graphics, Inc      / 
