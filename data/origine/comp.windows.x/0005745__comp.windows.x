Hello, I am writing a program which forks of a number of child processes
and each of the children printing things on the screen (quite messy in
one window)... 
The "xterm  -Sxxd"  option seems to be the solution to opening up
slave windows only to display output and I use the following code to
open up a pty (taken from Stevens)...and manage to open up an x-term
successfully.... 
The problem however is how do I write into this x-term ? Please help!
static char pty_name[12];
int pty_master( void );
int pty_master( void )
  int i,fd;
  char* ptr;
  struct stat statbuff;
  static char ptychar[] = "pqrs";
  static char hexdigit[] = "0123456789abcdef";
  for( ptr = ptychar; *ptr!=0; ptr++ ) {
    strcpy( pty_name, "/dev/ttyXY" );
    pty_name[8] = *ptr;
    pty_name[9] = '0';
    if( stat( pty_name, &statbuff) < 0 )
      break;
    for( i=0; i < 16; i++ ) {
      pty_name[9] = hexdigit[i];
      if( (fd = open( pty_name, O_RDWR )) >= 0 )
	return( fd );
  return(-1);
Vinod  						   email : vinod@ee.wpi.edu
An eye for an eye makes the whole world blind
			-Mohandas Karamchand Gandhi
