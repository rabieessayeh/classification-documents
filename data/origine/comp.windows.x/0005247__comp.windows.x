I found an oddity with our SGI Indigo (MIPS R3000 chip).
When xlock +nolock is running, and I am working remotely
or in batch (at) mode, the runtime of my programs (as timed
by using clock() in the code itself) is ~25% slower than if
xlock is NOT running.  No other processes seem to affect my
runtimes, yet this is very consistent!
Any explanations, real or imagined :)
thanx
dale@frostedflakes.llnl.gov
