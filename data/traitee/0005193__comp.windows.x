In article <rick.734610425@digibd> rick@digibd.digibd.com (Rick Richardson) writes:
>The other scary thing is that I ship libxcl.so with the 6 functions
>in it;  how many other libxcl.so type libraries will be shipped by
>other vendors?  Should I trademark the name libxcl.a? What if
>some clown uses that name and only puts 4 of the troublesome
>functions in it?
Does USL SVR4 support LD_RUN_PATH a la Solaris 2?
Or an equivalent?
If so, you can put the library in a package specific lib directory,
compile the app with LD_RUN_PATH defined, and all should work.
Besides, I'd say name it libPACKAGExcl.a if possible.
Cheers,
\/ato - Ian Dickinson - NIC handle: ID17          This article is dedicated to
vato@csv.warwick.ac.uk  ...!uknet!warwick!vato        those who disapprove but
/I=I/S=Dickinson/OU=CSV/O=Warwick/PRMD=UK.AC/ADMD= /C=GB/          continue to
@c=GB@o=University of Warwick@ou=Computing Services@cn=Ian Dickinson      read
