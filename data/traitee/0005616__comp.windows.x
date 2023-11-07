Hi,
  I am trying to write an X-windows based interface that runs on top of GDB. Could 
anyone help me in understanding the way we are supposed to "fork" GDB off as a 
subprocess ?? I currently use pipes but when I try and debug this program, the 
following happens :
	main()
           int x;
	   printf("enter x : ");
           scanf("%d", &x);
           printf("x = .%d.\n", x );
	The program hangs without returning the output of the printf statement. When I type
in a value (like 5), then all the printf's output comes out at one time.
Is there any other way, besides using PIPES to do this i.e., like ioctl or something else ??
Thanks,
Deepak
Deepak Mulchandani
Advanced Products Research and Development Laboratory
Motorola, Semiconductor Products Sector
Austin, TX
(512) 928-7642 							     deepak@inxs.sps.mot.com
