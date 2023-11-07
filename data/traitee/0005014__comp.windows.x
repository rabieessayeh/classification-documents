We have received a number of requests for a reposting of the
International Obfuscated C Code Contest rules and guidelines.  Also
some people requested that these rules be posted to a wider set of
groups.  Sorry for the cross posting.
Some technical clarifications were made to the rules and guidelines.
(See the diff marks at the right hand edge)  The rules and guidelines
for this year remain the same, so people who have already or are
in the process of submitting entries for the 1993 IOCCC need not worry 
about these changes.
chongo <Landon Curt Noll> /\cc/\        chongo@toad.com
Larry Bassel                            lab@sun.com
#!/bin/sh
# This is part 02 of a multipart archive
# ============= mkentry.c ==============
echo "x - extracting mkentry.c (Text)"
sed 's/^X//' << 'SHAR_EOF' > mkentry.c &&
X/* @(#)mkentry.c	1.25 4/5/93 15:58:08 */
X * Copyright (c) Landon Curt Noll & Larry Bassel, 1993.
X * All Rights Reserved.  Permission for personal, education or non-profit use
X * is granted provided this this copyright and notice are included in its
X * entirety and remains unaltered.  All other uses must receive prior
X * permission in writing from both Landon Curt Noll and Larry Bassel.
X * mkentry - make an International Obfuscated C Code Contest entry
X * usage:
X *	mkentry -r remarks -b build -p prog.c -o ioccc.entry
X *	-r remarks		file with remarks about the entry
X *	-b build		file containing how prog.c should be built
X *	-p prog.c		the obfuscated program source file
X *	-o ioccc.entry		ioccc entry output file
X * compile by:
X *	cc mkentry.c -o mkentry
X * Placed in the public domain by Landon Curt Noll, 1992.
X * This program attempts to implement the IOCCC rules.  Every attempt
X * has been made to make sure that this program produces an entry that
X * conforms to the contest rules.  In all cases, where this program
X * differs from the contest rules, the contest rules will be used.  Be
X * sure to check with the contest rules before submitting an entry.
X *   You may contact the judges by sending Email to the following address:
X *	...!{apple,pyramid,sun,uunet}!hoptoad!judges	(not the address for
X *	judges@toad.com					 submitting entries)
X *   Questions and comments about the contest are welcome.
X *  The rules and the guidelines may (and often do) change from year to
X *  year.  You should be sure you have the current rules and guidelines
X *  prior to submitting entries.  To obtain them, send Email to the address
X *  above and use the subject 'send rules'.
X *  One may obtain winners of previous contests (1984 to date), via ftp from:
X *	host: ftp.uu.net	(192.48.96.9)
X *	user: anonymous
X *	pass: yourname@yourhost
X *	dir:  ~/pub/ioccc
X *  As a last resort, previous winners may be obtained by sending Email
X *  to the above address.  Please use the subject 'send YEAR winners',
X *  where YEAR is a single 4 digit year, a year range, or 'all'.
X * Because contest rules change from year to year, one should only use this
X * program for the year that it was intended.  Be sure that the RULE_YEAR
X * define below matches this current year.
X#include <stdio.h>
X#include <ctype.h>
X#include <time.h>
X#include <sys/types.h>
X#include <sys/stat.h>
X/* logic */
X#ifndef TRUE
X# define TRUE 1
X#endif /* TRUE */
X#ifndef FALSE
X# define FALSE 0
X#endif /* FALSE */
X#define EOF_OK TRUE
X#define EOF_NOT_OK FALSE
X/* global limits */
X#define RULE_YEAR 1993		/* NOTE: should match the current year */
X#define START_DATE "1Mar92 0:00 UTC"	/* first confirmation received */
X#define MAX_COL 79		/* max column a line should hit */
X#define MAX_BUILD_SIZE 256	/* max how to build size */
X#define MAX_PROGRAM_SIZE 3217	/* max program source size */
X#define MAX_PROGRAM_SIZE2 1536	/* max program source size not counting
X				   whitespace and {}; not followed by
X				   whitespace or EOF */
X#define MAX_TITLE_LEN 12	/* max chars in the title */
X#define MAX_ENTRY_LEN 1		/* max length in the entry input line */
X#define MAX_ENTRY 8		/* max number of entries per person per year */
X#define MAX_FILE_LEN 1024	/* max filename length for a info file */
X/* where to send entries */
X#define ENTRY_ADDR1 "...!{apple,pyramid,sun,uunet}!hoptoad!obfuscate"
X#define ENTRY_ADDR2 "obfuscate@toad.com"
X/* uuencode process - assumes ASCII */
X#define UUENCODE(c) (encode_str[(int)(c)&0xff])
X#define UUENCODE_LEN 45		/* max uuencode chunk size */
X#define UUINFO_MODE 0444	/* mode of an info file's uuencode file */
X#define UUBUILD_MODE 0444	/* mode of the build file's uuencode file */
X#define UUBUILD_NAME "build"	/* name for the build file's uuencode file */
X#define UUPROG_MODE 0444	/* mode of the program's uuencode file */
X#define UUPROG_NAME "prog.c"	/* name for the program's uuencode file */
X/* encode_str[(char)val] is the uuencoded character of val */
Xchar encode_str[256+1] = "`!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_ !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_ !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_ !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_";
X/* global declarations */
Xchar *program;			/* our name */
Xlong start_time;		/* the startup time */
X/* forward declarations */
Xvoid parse_args();
Xvoid usage();
XFILE *open_remark();
XFILE *open_build();
XFILE *open_program();
XFILE *open_output();
Xvoid output_entry();
Xvoid output_remark();
Xvoid output_author();
Xvoid output_info();
Xvoid output_build();
Xvoid output_program();
Xvoid output_end();
Xint get_line();
Xvoid output_till_dot();
Xint col_len();
Xvoid check_io();
Xvoid uuencode();
Xmain(argc, argv)
X    int argc;		/* arg count */
X    char **argv;	/* the args */
X    FILE *remark=NULL;	/* open remarks stream */
X    FILE *build=NULL;	/* open build file stream */
X    FILE *prog=NULL;	/* open program stream */
X    FILE *output=NULL;	/* open output stream */
X    char *rname=NULL;	/* file with remarks about the entry */
X    char *bname=NULL;	/* file containing how prog.c should be built */
X    char *pname=NULL;	/* the obfuscated program source file */
X    char *oname=NULL;	/* ioccc entry output file */
X    struct tm *tm;	/* startup time structure */
X     * check on the year
X    start_time = time((long *)0);
X    tm = gmtime(&start_time);
X    if (tm->tm_year != RULE_YEAR-1900) {
X	fprintf(stderr,
X	"%s: WARNING: this program applies to %d, which may differ from %d\n\n",
X	    argv[0], RULE_YEAR, 1900+tm->tm_year);
X     * parse the command line args
X    parse_args(argc, argv, &rname, &bname, &pname, &oname);
X     * open/check the input and output files
X     * We open and truncate the output file first, in case it is the same
X     * as one of the input files.
X    output = open_output(oname);
X    remark = open_remark(rname);
X    build = open_build(bname);
X    prog = open_program(pname);
X    if (output==NULL || remark==NULL || build==NULL || prog==NULL) {
X	exit(1);
X     * output each section
X    output_entry(output, oname);
X    output_remark(output, oname, remark, rname);
X    output_author(output, oname);
X    output_info(output, oname);
X    output_build(output, oname, build, bname);
X    output_program(output, oname, prog, pname);
X    output_end(output, oname);
X     * flush the output
X    if (fflush(output) == EOF) {
X	fprintf(stderr, "%s: flush error in %s: ", program, oname);
X	perror("");
X	exit(2);
X     * final words
X    printf("\nYour entry can be found in %s.  You should check this file\n",
X	oname);
X    printf("correct any problems and verify that the uudecode utility will\n");
X    printf("correctly decode your build file and program.\n\n");
X    printf("This program has been provided as a guide for submitters.  In\n");
X    printf("cases where it conflicts with the rules, the rules shall apply.\n");
X    printf("It is your responsibility to ensure that your entry conforms to\n");
X    printf("the current rules.\n\n");
X    printf("Email your entries to:\n");
X    printf("\t%s\n", ENTRY_ADDR1);
X    printf("\t%s\n\n", ENTRY_ADDR2);
X    printf("Please use the following subject when you Email your entry:\n");
X    printf("\tioccc entry\n\n");
X    /* all done */
X    exit(0);
X * parse_args - parse the command line args
X * Given the command line args, this function parses them and sets the
X * required name flags.  This function will return only if the command
X * line syntax is correct.
Xvoid
Xparse_args(argc, argv, rname, bname, pname, oname)
X    int argc;		/* arg count */
X    char **argv;	/* the args */
X    char **rname;	/* file with remarks about the entry */
X    char **bname;	/* file containing how prog.c should be built */
X    char **pname;	/* the obfuscated program source file */
X    char **oname;	/* ioccc entry output file */
X    char *optarg;	/* -flag option operand */
X    int flagname;	/* the name of the -flag */
X    int i;
X     * Not everyone has getopt, so we must parse args by hand.
X    program = argv[0];
X    for (i=1; i < argc; ++i) {
X	/* determine the flagname */
X	if (argv[i][0] != '-') {
X	    usage(1);
X	flagname = (int)argv[i][1];
X	/* determine the flag's operand */
X	if (flagname != '\0' && argv[i][2] != '\0') {
X	    optarg = &argv[i][2];
X	} else {
X	    if (i+1 >= argc) {
X		usage(2);
X	    } else {
X		optarg = argv[++i];
X	/* save the flag's operand in the correct global variable */
X	switch (flagname) {
X	case 'r':
X	    *rname = optarg;
X	    break;
X	case 'b':
X	    *bname = optarg;
X	    break;
X	case 'p':
X	    *pname = optarg;
X	    break;
X	case 'o':
X	    *oname = optarg;
X	    break;
X	default:
X	    usage(3);
X     * verify that we have all of the required flags
X    if (*rname == NULL || *bname == NULL || *pname == NULL || *oname == NULL) {
X	usage(4);
X    return;
X * usage - print a usage message and exit
X * This function does not return.
Xvoid
Xusage(exitval)
X    int exitval;		/* exit with this value */
X    fprintf(stderr,
X	"usage: %s -r remarks -b build -p prog.c -o ioccc.entry\n\n", program);
X    fprintf(stderr, "\t-r remarks\tfile with remarks about the entry\n");
X    fprintf(stderr, "\t-b build\tfile containing how prog.c should be built\n");
X    fprintf(stderr, "\t-p prog.c\tthe obfuscated program source file\n");
X    fprintf(stderr, "\t-o ioccc.entry\tioccc entry output file\n");
X    exit(exitval);
X * open_remark - open/check the remark file
X * The remark file should be indented by 4 spaces, and should not extend
X * beyond column MAX_COL.  These are not requirements, so we only warn.
X * This function returns NULL on I/O or format error.
Xopen_remark(filename)
X    char *filename;
X    FILE *stream;		/* the opened file stream */
X    char buf[BUFSIZ+1];		/* input buffer */
X    int toolong=0;		/* number of lines that are too long */
X    int non_indent=0;		/* number of lines not indented by 4 spaces */
X     * open the remark input file
X    stream = fopen(filename, "r");
X    if (stream == NULL) {
X	fprintf(stderr, "%s: cannot open remark file: %s: ",
X	    program, filename);
X	perror("");
X	return(NULL);
X     * look at each line
X    while (fgets(buf, BUFSIZ, stream) != NULL) {
X	/* count lines that do not start with 4 spaces */
X	if (buf[0] != '\n' && strncmp(buf, "    ", 4) != 0) {
X	    ++non_indent;
X	/* count long lines */
X	if (col_len(buf) > MAX_COL) {
X	    /* found a line that is too long */
X	    ++toolong;
X    /* watch for I/O errors */
X    check_io(stream, filename, EOF_OK);
X    /* note long lines if needed */
X    if (toolong > 0) {
X	fprintf(stderr,
X	    "%s: WARNING: %d line(s) from %s extend beyond the 80th column\n",
X	    program, toolong, filename);
X	fprintf(stderr,
X	    "%s:          This is ok, but it would be nice to avoid\n\n",
X	    program);
X    /* note non-indented lines, if needed */
X    if (non_indent > 0) {
X	fprintf(stderr,
X	    "%s: WARNING: %d line(s) from %s are not indented by 4 spaces\n",
X	    program, non_indent, filename);
X	fprintf(stderr,
X	    "%s:          This is ok, but it would be nice to avoid\n\n",
X	    program);
X    /* return the open file */
X    rewind(stream);
X    return(stream);
X * open_build - open/check the build file
X * The how to build file must not be longer than MAX_BUILD_SIZE bytes.
X * This function returns NULL on I/O or size error.
Xopen_build(filename)
X    char *filename;
X    FILE *stream;		/* the opened file stream */
X    struct stat statbuf;	/* the status of the open file */
X     * open the how to build input file
X    stream = fopen(filename, "r");
X    if (stream == NULL) {
X	fprintf(stderr, "%s: cannot open how to build file: %s: ",
X	    program, filename);
X	perror("");
X	return(NULL);
X     * determine the size of the file
X    if (fstat(fileno(stream), &statbuf) < 0) {
X	fprintf(stderr, "%s: cannot stat how to build file: %s: ",
X	    program, filename);
X	perror("");
X	return(NULL);
X    if (statbuf.st_size > MAX_BUILD_SIZE) {
X	fprintf(stderr,
X	    "%s: FATAL: the how to build file: %s, is %d bytes long\n",
X	    program, filename, statbuf.st_size);
X	fprintf(stderr,
X	    "%s:        it may not be longer than %d bytes\n",
X	    program, MAX_BUILD_SIZE);
X	return(NULL);
X    /* return the open file */
X    return(stream);
X * open_program - open/check the program source file
X * The program source file must be <= 3217 bytes.  The number of
X * non-whitespace and }{; chars not followed by whitespace must
X * be <= 1536 bytes.
X * This function returns NULL on I/O or size error.
Xopen_program(filename)
X    char *filename;
X    FILE *stream;		/* the opened file stream */
X    struct stat statbuf;	/* the status of the open file */
X    int count;			/* special count size */
X    int c;			/* the character read */
X     * open the program source input file
X    stream = fopen(filename, "r");
X    if (stream == NULL) {
X	fprintf(stderr, "%s: cannot open program source file: %s: ",
X	    program, filename);
X	perror("");
X	exit(7);
X     * determine the size of the file
X    if (fstat(fileno(stream), &statbuf) < 0) {
X	fprintf(stderr, "%s: cannot stat program source file: %s: ",
X	    program, filename);
X	perror("");
X	return(NULL);
X    if (statbuf.st_size > MAX_PROGRAM_SIZE) {
X	fprintf(stderr,
X	    "%s: FATAL: the program source file: %s, is %d bytes long\n",
X	    program, filename, statbuf.st_size);
X	fprintf(stderr,
X	    "%s:        it may not be longer than %d bytes\n",
X	    program, MAX_PROGRAM_SIZE);
X	return(NULL);
X     * count the non-whitespace, non {}; followed by whitespace chars
X    count = 0;
X    while ((c=fgetc(stream)) != EOF) {
X	/* look at non-whitespace */
X	if (!isascii(c) || !isspace(c)) {
X	    switch (c) {
X	    case '{':		/* count if not followed by EOF or whitespace */
X	    case '}':
X	    case ';':
X		/* peek at next char */
X		c = fgetc(stream);
X		if (c != EOF && isascii(c) && !isspace(c)) {
X		    /* not followed by whitespace or EOF, count it */
X		    ungetc(c, stream);
X		    ++count;
X		break;
X	    default:
X		++count;
X		break;
X    /* watch for I/O errors */
X    check_io(stream, filename, EOF_OK);
X    /* look at the special size */
X    if (count > MAX_PROGRAM_SIZE2) {
X	fprintf(stderr,
X	    "%s: FATAL: the number of bytes that are non-whitespace, and\n",
X	    program);
X	fprintf(stderr,
X	    "%s:        that are not '{', '}', ';' followed by whitespace\n",
X	    program);
X	fprintf(stderr,
X	    "%s:        or EOF must be <= %d bytes\n",
X	    program, MAX_PROGRAM_SIZE2);
X	fprintf(stderr,
X	    "%s:        in %s, %d bytes were found\n",
X	    program, filename, count);
X	return(NULL);
X    /* return the open file */
X    rewind(stream);
X    return(stream);
X * open_output - open/check the entry output file
X * This function returns NULL on open error.
Xopen_output(filename)
X    char *filename;
X    FILE *stream;		/* the opened file stream */
X     * open the ioccc entry output file
X    stream = fopen(filename, "w");
X    if (stream == NULL) {
X	fprintf(stderr, "%s: cannot open ioccc entry file for output: %s: ",
X	    program, filename);
X	perror("");
X	exit(8);
X    /* return the open file */
X    return(stream);
X * output_entry - output the ---entry--- section
X * Read the needed information form stdin, and write the entry section.
Xvoid
Xoutput_entry(output, oname)
X    FILE *output;		/* entry's output file stream */
X    char *oname;		/* name of the output file */
X    char title[MAX_TITLE_LEN+1+1];	/* the entry's title */
X    char buf[MAX_COL+1+1];		/* I/O buffer */
X    int entry=0;			/* entry number */
X    int ret;				/* fields processed by fscanf */
X    int ok_line=0;			/* 0 => the line is not ok */
X    char skip;				/* input to skip */
X    FILE *date_pipe;			/* pipe to a date command */
X    time_t epoch_sec;			/* seconds since the epoch */
X    char *p;
X     * write the start of the section
X    fprintf(output, "---entry---\n");
X    check_io(output, oname, EOF_NOT_OK);
X     * write the rule year
X    fprintf(output, "rule:\t%d\n", RULE_YEAR);
X    check_io(output, oname, EOF_NOT_OK);
X    /* determine if this is a fix */
X    printf("Is this a fix, update or resubmittion to a ");
X    printf("previous entry (enter y or n)? ");
X    while (get_line(buf, 1+1, 0) <= 0 || !(buf[0]=='y' || buf[0]=='n')) {
X	printf("\nplease answer y or n: ");
X    if (buf[0] == 'y') {
X	fprintf(output, "fix:\ty\n");
X	check_io(output, oname, EOF_NOT_OK);
X	printf("\nBe sure that the title and entry number that you give\n");
X	printf("are the same of as the entry you are replacing\n");
X    } else {
X	fprintf(output, "fix:\tn\n");
X	check_io(output, oname, EOF_NOT_OK);
X     * write the title
X    printf("\nYour title must match expression be a [a-zA-Z0-9_=] character\n");
X    printf("followed by 0 to %d more [a-zA-Z0-9_=+-] characters.\n\n",
X    printf("It is suggested, but not required, that the title should\n");
X    printf("incorporate your username; in the\n");
X    printf("case of multiple authors, consider using parts of the usernames\n");
X    printf("of the authors.\n\n");
X    printf("enter your title: ");
X    do {
X	/* prompt and read a line */
X	if ((ok_line = get_line(title, MAX_TITLE_LEN+1, MAX_COL-9)) <= 0) {
X	    printf("\ntitle is too long, please re-enter: ");
X	    continue;
X	/* verify the pattern, not everyone has regexp, so do it by hand */
X	if (!isascii((int)title[0]) ||
X	    !(isalnum((int)title[0]) || title[0] == '_' || title[0] == '=')) {
X	    printf("\ninvalid first character in the title\n\n");
X	    printf("enter your title: ");
X	    ok_line = 0;
X	} else {
X	    for (p=(&title[1]); *p != '\0' && *p != '\n'; ++p) {
X		if (!isascii((int)*p) ||
X		    !(isalnum((int)*p) ||
X		    printf("\ninvalid character in the title\n\n");
X		    printf("enter your title: ");
X		    ok_line = 0;
X    } while (ok_line <= 0);
X    fprintf(output, "title:\t%s", title);
X    check_io(output, oname, EOF_NOT_OK);
X     * write the entry number
X    printf("\nEach person may submit up to %d entries per year.\n\n",
X    printf("enter an entry number from 0 to %d inclusive: ", MAX_ENTRY-1);
X    do {
X	/* get a valid input line */
X	fflush(stdout);
X	ret = fscanf(stdin, "%d[\n]", &entry);
X	check_io(stdin, "stdin", EOF_NOT_OK);
X	/* skip over input until newline is found */
X	do {
X	    skip = fgetc(stdin);
X	    check_io(stdin, "stdin", EOF_NOT_OK);
X	    if (skip != '\n') {
X		/* bad text in input, invalidate entry number */
X		entry = -1;
X	} while (skip != '\n');
X	/* check if we have a number, and if it is in range */
X	if (ret != 1 || entry < 0 || entry > MAX_ENTRY-1) {
X	    printf(
X	      "\nThe entry number must be between 0 and %d inclusive\n\n",
X	    printf("enter the entry number: ");
X    } while (ret != 1 || entry < 0 || entry > MAX_ENTRY-1);
X    fprintf(output, "entry:\t%d\n", entry);
X    check_io(output, oname, EOF_NOT_OK);
X     * write the submission date
X    /* returns a newline */
X    epoch_sec = time(NULL);
X    fprintf(output, "date:\t%s", asctime(gmtime(&epoch_sec)));
X    check_io(output, oname, EOF_NOT_OK);
X     * write the OS/machine host information
X    printf(
X      "\nEnter the machine(s) and OS(s) under which your entry was tested.\n");
X    output_till_dot(output, oname, "host:");
X * output_remark - output the ---remark--- section
X * Read the needed information form stdin, and write the entry section.
Xvoid
Xoutput_remark(output, oname, remark, rname)
X    FILE *output;		/* entry's output file stream */
X    char *oname;		/* name of the output file */
X    FILE *remark;		/* stream to the file containing remark text */
X    char *rname;		/* name of the remark file */
X    char buf[BUFSIZ+1];		/* input/output buffer */
X     * write the start of the section
X    fprintf(output, "---remark---\n");
X    check_io(output, oname, EOF_NOT_OK);
X     * copy the remark file to the section
X    while (fgets(buf, BUFSIZ, remark) != NULL) {
X	fputs(buf, output);
X	check_io(output, oname, EOF_NOT_OK);
X    check_io(remark, rname, EOF_OK);
X    /* be sure that the remark section ends with a newline */
X    if (buf[strlen(buf)-1] != '\n') {
X	fputc('\n', output);
X	check_io(output, oname, EOF_NOT_OK);
X * output_author - output the ---author--- section
X * Read the needed information from stdin, and write the author section.
X * If multiple authors exist, multiple author sections will be written.
Xvoid
Xoutput_author(output, oname)
X    FILE *output;		/* entry's output file stream */
X    char *oname;		/* name of the output file */
X    char buf[MAX_COL+1+1];	/* I/O buffer */
X    int more_auths;		/* TRUE => more authors to note */
X    int auth_cnt=0;		/* number of authors processed */
X     * prompt the user for the author section
X    printf("\nEnter information about each author.  If your entry is after\n");
X    printf("%s and before the contest deadline, the judges\n", START_DATE);
X    printf("will attempt to Email back a confirmation to the first author\n");
X     * place author information for each author in an individual section
X    do {
X	/* write the start of the section */
X	fprintf(output, "---author---\n");
X	check_io(output, oname, EOF_NOT_OK);
X	/* write the author */
X	printf("\nAuthor #%d name: ", ++auth_cnt);
X	while (get_line(buf, MAX_COL+1, MAX_COL-9) <= 0) {
X	    printf("\nname too long, please re-enter: ");
X	fprintf(output, "name:\t%s", buf);
X	check_io(output, oname, EOF_NOT_OK);
X	/* write the organization */
X	printf("\nEnter the School/Company/Organization of author #%d\n",
X	    auth_cnt);
X	printf("\nAuthor #%d org: ", auth_cnt);
X	while (get_line(buf, MAX_COL+1, MAX_COL-9) <= 0) {
X	    printf("\nline too long, please re-enter: ");
X	fprintf(output, "org:\t%s", buf);
X	check_io(output, oname, EOF_NOT_OK);
X	/* write the address */
X	printf(
X	    "\nEnter the postal address for author #%d.  Be sure to include\n",
X	    auth_cnt);
X	printf("your country and do not include your name.\n");
X	output_till_dot(output, oname, "addr:");
X	/* write the Email address */
X	printf(
X	    "\nEnter the Email address for author #%d.  Use an address from\n",
X	    auth_cnt);
X	printf(
X	    "a registered domain or well known site.  If you give several\n");
X	printf("forms, list them one per line.\n");
X	output_till_dot(output, oname, "email:");
X	/* write the anonymous status */
X	printf("\nShould author #%d remain anonymous (enter y or n)? ",
X	    auth_cnt);
X	while (get_line(buf, 1+1, 0) <= 0 || !(buf[0]=='y' || buf[0]=='n')) {
X	    printf("\nplease answer y or n: ");
X	fprintf(output, "anon:\t%s", buf);
X	check_io(output, oname, EOF_NOT_OK);
X	/* determine if there is another author */
X	printf("\nIs there another author (enter y or n)? ");
X	while (get_line(buf, 1+1, 0) <= 0 || !(buf[0]=='y' || buf[0]=='n')) {
X	    printf("\nplease answer y or n: ");
X	if (buf[0] == 'y') {
X	    more_auths = TRUE;
X	} else {
X	    more_auths = FALSE;
X    } while (more_auths == TRUE);
X    return;
X * output_info - output the ---info--- section(s)
X * Read the needed information from stdin, and write the info section.
X * If multiple info files exist, multiple info sections will be written.
Xvoid
Xoutput_info(output, oname)
X    FILE *output;		/* entry's output file stream */
X    char *oname;		/* name of the output file */
X    char infoname[MAX_FILE_LEN+1];	/* filename buffer */
X    char yorn[1+1];		/* y or n answer */
X    char *uuname;		/* name to uuencode as */
X    FILE *infile;		/* info file stream */
X     * prompt the user for info information
X    printf("\nInfo files should be used only to supplement your entry.\n");
X    printf("For example, info files may provide sample input or detailed\n");
X    printf("information about your entry.  Because they are supplemental,\n");
X    printf("the entry should not require them to exist.\n\n");
X     * while there is another info file to save, uuencode it
X    printf("Do you have a info file to include (enter y or n)? ");
X    while (get_line(yorn, 1+1, 0) <= 0 || !(yorn[0]=='y' || yorn[0]=='n')) {
X	printf("\nplease answer y or n: ");
X    while (yorn[0] == 'y') {
X	/* read the filename */
X	printf("\nEnter the info filename: ");
X	while (get_line(infoname, MAX_FILE_LEN+1, 0) <= 0) {
X	    printf("\nInfo filename too long, please re-enter: ");
X	/* compute the basename of the info filename */
X	/* remove the trailing newline */
X	uuname = &infoname[strlen(infoname)-1];
X	*uuname = '\0';
X	/* avoid rindex/shrrchr compat issues, do it by hand */
X	for (--uuname; uuname > infoname; --uuname) {
X	    if (*uuname == '/') {
X		++uuname;
X		break;
X	/* attempt to open the info file */
X	infile = fopen(infoname, "r");
X	if (infile == NULL) {
X	    fprintf(stderr, "\n%s: cannot open info file: %s: ",
X		program, infoname);
X	    perror("");
X	    continue;
X	 * write the start of the section
X	fprintf(output, "---info---\n");
X	check_io(output, oname, EOF_NOT_OK);
X	/* uuencode the info file */
X	uuencode(output, oname, infile, infoname, UUINFO_MODE, uuname);
X	printf("\nDo you have another info file to include (enter y or n)? ");
X	while (get_line(yorn, 1+1, 0) <= 0 || !(yorn[0]=='y' || yorn[0]=='n')) {
X	    printf("\nplease answer y or n: ");
X    return;
X * output_build - output the ---build--- section
X * Read the needed information from stdin, and write the build section.
Xvoid
Xoutput_build(output, oname, build, bname)
X    FILE *output;		/* entry's output file stream */
X    char *oname;		/* name of the output file */
X    FILE *build;		/* open build file stream */
X    char *bname;		/* name of the build file */
X     * write the start of the section
X    fprintf(output, "---build---\n");
X    check_io(output, oname, EOF_NOT_OK);
X     * uuencode the program file
X    uuencode(output, oname, build, bname, UUBUILD_MODE, UUBUILD_NAME);
X    return;
X * output_program - output the ---program--- section
X * Read the needed information form stdin, and write the program section.
Xvoid
Xoutput_program(output, oname, prog, pname)
X    FILE *output;		/* entry's output file stream */
X    char *oname;		/* name of the output file */
X    FILE *prog;			/* open program stream */
X    char *pname;		/* name of program file */
X     * write the start of the section
X    fprintf(output, "---program---\n");
X    check_io(output, oname, EOF_NOT_OK);
X     * uuencode the program file
X    uuencode(output, oname, prog, pname, UUPROG_MODE, UUPROG_NAME);
X    return;
X * output_end - output the ---end--- section
X * Read the needed information form stdin, and write the 'end section'.
Xvoid
Xoutput_end(output, oname)
X    FILE *output;		/* entry's output file stream */
X    char *oname;		/* name of the output file */
X     * write the final section terminator
X    fprintf(output, "---end---\n");
X    check_io(output, oname, EOF_NOT_OK);
X    return;
X * get_line - get an answer from stdin
X * This function will flush stdout, in case a prompt is pending, and
X * read in the answer.
X * This function returns 0 if the line is too long, of the length of the
X * line (including the newline) of the line was ok.  This function does
X * not return if ERROR or EOF.
Xint
Xget_line(buf, siz, maxcol)
X    char *buf;			/* input buffer */
X    int siz;			/* length of input, including the newline */
X    int maxcol;			/* max col allowed, 0 => disable check */
X    int length;			/* the length of the input line */
X    /* flush terminal output */
X    fflush(stdout);
X    /* read the line */
X    if (fgets(buf, siz+1, stdin) == NULL) {
X	/* report the problem */
X	check_io(stdin, "stdin", EOF_NOT_OK);
X    /* look for the newline */
X    length = strlen(buf);
X    if (buf[length-1] != '\n') {
X	int eatchar;		/* the char being eaten */
X	/* no newline found, line must be too long, eat the rest of the line */
X	do {
X	    eatchar = fgetc(stdin);
X	} while (eatchar != EOF && eatchar != '\n');
X	check_io(stdin, "stdin", EOF_NOT_OK);
X	/* report the situation */
X	return 0;
X    /* watch for long lines, if needed */
X    if (maxcol > 0 && (length > maxcol || col_len(buf) > maxcol)) {
X	/* report the situation */
X	return 0;
X    /* return length */
X    return length;
X * output_till_dot - output a set of lines until '.' by itself is read
X * This routine will read a set of lines until (but not including)
X * a single line with '.' is read.  The format of the output is:
X *	leader:\tfirst line
X *	\tnext line
X *	\tnext line
X * This routine will not return if I/O error or EOF.
Xvoid
Xoutput_till_dot(output, oname, leader)
X    FILE *output;		/* entry's output file stream */
X    char *oname;		/* name of the output file */
X    char *leader;		/* the lead text for the first line */
X    char buf[BUFSIZ+1];		/* input buffer */
X    int count;			/* lines read */
X    int done=FALSE;		/* TRUE => finished reading input */
X    /* instruct the user on how to input */
X    printf("\nTo end input, enter a line with a single period.\n");
X    /* read lines until '.' or EOF */
X    count = 0;
X    while (!done) {
X	/* issue the prompt */
X	printf("%s\t", (count>0) ? "" : leader);
X	fflush(stdout);
X	/* get the line */
X	if (get_line(buf, BUFSIZ, MAX_COL-9) <= 0) {
X	    printf("\nline too long, please re-enter:\n\t");
X	    continue;
X	/* note if '.' was read */
X	if (strcmp(buf, ".\n") == 0) {
X	    done = TRUE;
X	/* write line if we read something */
X	if (!done) {
X	    fprintf(output, "%s\t%s", (count++>0) ? "" : leader, buf);
X	    check_io(output, oname, EOF_NOT_OK);
X    /* if no lines read, at least output something */
X    if (count <= 0) {
X	fprintf(output, "%s\t.\n", leader);
X	check_io(output, oname, EOF_NOT_OK);
X    return;
X * col_len - determine the highest that a string would reach
X * Given a string, this routine returns that a string would reach
X * if the string were printed at column 1.  Tab stops are assumed
X * to start at 9, 17, 25, 33, ...
Xint
Xcol_len(string)
X    char *string;		/* the string to examine */
X    int col;	/* current column */
X    char *p;	/* current char */
X    /* scan the string */
X    for (col=0, p=string; *p != '\0' && *p != '\n'; ++p) {
X	/* note the column shift */
X	col = (*p=='\t') ? 1+((col+8)/8*8) : col+1;
X    if (*p == '\n') {
X	--col;
X    /* return the highest column */
X    return col;
X * check_io - check for EOF or I/O error on a stream
X * Does not return if EOF or I/O error.
Xvoid
Xcheck_io(stream, name, eof_ok)
X    FILE *stream;		/* the stream to check */
X    char *name;			/* the name of this stream */
X    int eof_ok;			/* EOF_OK or EOF_NOT_OK */
X    /* test for I/O error */
X    if (ferror(stream)) {
X	fprintf(stderr, "%s: error on %s: ", program, name);
X	perror("");
X	exit(1);
X    /* test for EOF */
X    } else if (eof_ok == EOF_NOT_OK && feof(stream)) {
X	fprintf(stderr, "%s: EOF on %s\n", program, name);
X	exit(1);
X    return;
X * uuencode - uuencode a file
X * Perform the uuencoding process identical to the process performed
X * by the uuencode(1) utility.
X * This routine implements the algorithm described in the uuencode(5)
X * 4.3BSD Reno man page.
Xvoid
Xuuencode(output, oname, infile, iname, umode, uname)
X    FILE *output;		/* output file stream */
X    char *oname;		/* output filename */
X    FILE *infile;		/* input file stream */
X    char *iname;		/* input filename */
X    int umode;			/* the mode to put on the uuencode file */
X    char *uname;		/* name to put on the uuencode file */
X    char buf[UUENCODE_LEN+1];	/* the uuencode buffer */
X    int read_len;		/* actual number of chars read */
X    int val;			/* 6 bit chunk from buf */
X    char filler='\0';		/* filler uuencode pad text */
X    char *p;
X     * output the initial uuencode header
X    fprintf(output, "begin %o %s\n", umode, uname);
X    check_io(output, oname, EOF_NOT_OK);
X     * clear out the input buffer
X    for (p=buf; p < &buf[sizeof(buf)/sizeof(buf[0])]; ++p) {
X     * We will process UUENCODE_LEN chars at a time, forming
X     * a single output line each time.
X    while ((read_len=fread(buf,sizeof(buf[0]),UUENCODE_LEN,infile)) > 0) {
X	 * the first character is the length character
X	fputc(UUENCODE(read_len), output);
X	check_io(output, oname, EOF_NOT_OK);
X	 * We will convert 24 bits at a time.  Thus we will convert
X	 * 3 sets of 8 bits into 4 sets of uuencoded 6 bits.
X	for (p=buf; read_len>0; read_len-=3, p+=3) {
X	    /* bits 0 to 5 */
X	    val = (p[0]>>2)&0x3f;
X	    fputc(UUENCODE(val), output);
X	    check_io(output, oname, EOF_NOT_OK);
X	    /* bits 6 to 11 */
X	    val = ((p[0]<<4)&0x30) | ((p[1]>>4)&0x0f);
X	    fputc(UUENCODE(val), output);
X	    check_io(output, oname, EOF_NOT_OK);
X	    /* bits 12 to 17 */
X	    val = ((p[1]<<2)&0x3c) | ((p[2]>>6)&0x03);
X	    fputc(UUENCODE(val), output);
X	    check_io(output, oname, EOF_NOT_OK);
X	    /* bits 18 to 23 */
X	    val = p[2]&0x3f;
X	    fputc(UUENCODE(val), output);
X	    check_io(output, oname, EOF_NOT_OK);
X	/* end of UUENCODE_LEN line */
X	fputc('\n', output);
X	check_io(output, oname, EOF_NOT_OK);
X	 * clear out the input buffer  (don't depend on bzero() or memset())
X	for (p=buf; p < &buf[sizeof(buf)/sizeof(buf[0])]; ++p) {
X    /* check the last read on the input file */
X    check_io(infile, iname, EOF_OK);
X    /* write end of uuencode file */
X    fprintf(output, "%c\nend\n", UUENCODE(filler));
X    check_io(output, oname, EOF_NOT_OK);
chmod 0444 mkentry.c ||
echo "restore of mkentry.c failed"
set `wc -c mkentry.c`;Wc_c=$1
if test "$Wc_c" != "34482"; then
	echo original size 34482, current size $Wc_c
fi
# ============= obfuscate.info ==============
echo "x - extracting obfuscate.info (Text)"
sed 's/^X//' << 'SHAR_EOF' > obfuscate.info &&
X1993 Obfuscated contest information
XCopyright (c) Landon Curt Noll & Larry Bassel, 1993.
XAll Rights Reserved.  Permission for personal, education or non-profit use is
Xgranted provided this this copyright and notice are included in its entirety
Xand remains unaltered.  All other uses must receive prior permission in writing
Xfrom both Landon Curt Noll and Larry Bassel.
XThe International Obfuscated C Code Contest (IOCCC), in the sprit of
Xco-operation, is willing mention other programming contents, as space
Xpermits.
XHow to have your contest included in this file:
X    If you wish the IOCCC judges to include your contest in this file,
X    send a request to:
X	judges@toad.com
X    We request that contest descriptions be limited to 50 lines and to
X    not exceed 2500 bytes.  We typically request that your contest
X    include a current description of the IOCCC.
X    In order to be included in this file for given year, we must
X    receive a current description no EARLIER than Jan 1 00:00:00 UTC and
X    no LATER than Feb 15 00:00:00 UTC.  Agreement to publish your
X    contest must also be obtained prior to Feb 15.  Annual contests
X    that fail to submit a new entry will be dropped from this file.
XOfficial Disclaimer:  (pardon the officialese)
X    The contents noted below, other than the IOCCC, are not affiliated
X    with the IOCCC, nor are they endorsed by the IOCCC.  We reserve the
X    right to refuse to print information about a given contest.
X    The information below was provided by the particular contest
X    organizer(s) and printed by permission.  Please contact the
X    contest organizer(s) directly regarding their contents.
XWith that official notice given, we present for your ENJOYMENT, the following
Xinformation about contents:
X    10th International Obfuscated C Contest
X	"The original obfuscated contest"
X    Obfuscate:  tr.v.  -cated, -cating, -cates.  1. a.  To render obscure.
X                b.  To darken.  2. To confuse:  Their emotions obfuscated
X		their judgment.  [LLat. obfuscare, to darken : ob(intensive) +
X                Lat. fuscare, to darken < fuscus, dark.] -obfuscation n.
X                obfuscatory adj.
X        * To write the most Obscure/Obfuscated C program under the rules below.
X        * To show the importance of programming style, in an ironic way.
X        * To stress C compilers with unusual code.
X        * To illustrate some of the subtleties of the C language.
X        * To provide a safe forum for poor C code.  :-)
X    The IOCCC is the grandfather of USENET programming contests.  Since
X    1984, this contest demonstrated that a program that simply works
X    correctly is not sufficient.  The IOCCC has also done much to add
X    the arcane word 'obfuscated' back into the English language.
X    (see "The New Hacker's Dictionary" by Eric Raymond)
X    You are strongly encouraged to read the new contest rules before
X    sending any entries.  The rules, and sometimes the contest Email
X    address itself, change over time.  A valid entry one year may
X    be rejected in a later year due to changes in the rules.  The typical
X    start date for contests is in early March.  Contest rules are normally not
X    finalized and posted until the beginning of the contest.  The typical
X    closing date for contests are in early May.
X    The rules and the guidelines may (and often do) change from year to
X    year.  You should be sure you have the current rules and guidelines
X    prior to submitting entries.  To obtain them, send Email to the address
X    above and use the subject 'send rules'.
X    One may obtain winners of previous contests (1984 to date), via ftp from:
X	host: ftp.uu.net	(192.48.96.9)
X	user: anonymous
X	pass: yourname@yourhost
X	dir:  ~/pub/ioccc
X    As a last resort, previous winners may be obtained by sending Email
X    to the above address.  Please use the subject 'send YEAR winners',
X    where YEAR is a single 4 digit year, a year range, or 'all'.
X    0th International Obfuscated Perl Contest
X	By: Landon Noll & Larry Wall
X    This content is being planned.  Someday when Landon & Larry are not too
X    busy, they will actually get around to posting the first set of rules!
X    Landon says: "Yes, I know that I said we would have a contest in 1993,
X		  but other existing projects got in the way.  Hopefully
X		  something will be developed after Nov 1993."
X                2nd International obFUsCaTeD POsTsCripT Contest
X                     Jonathan Monsarrat (jgm@cs.brown.edu)
X                         Alena Lacova (alena@nikhef.nl)
X    A  contest of  programming skills  and  knowledge, exclusively  for the
X    PostScript programming language. Its purpose:
X    * To spread knowledge of PostScript and its details.
X    * To applaud those with the best tricks.
X    * To prove  that humans can  beat those damnable  machine generators at
X      their own game by writing  the most obscure and mysterious PostScript
X      programs ever.
X    Winners will receive the fame and attention that goes with having their
X    program entry posted as a winner to programmers world-wide.
X    The 1993 contest rules and results are available by ftp as
X    ``wilma.cs.brown.edu:pub/postscript/obfuscated*.shar'', or individually
X    in the obfuscated directory. The judges will post the 1994 rules
X    in November to comp.lang.postscript on Usenet, and other places.
X    Send questions to jgm@cs.brown.edu.
X    Categories include: Best Obfuscated PostScript, Best Artwork,
X    Most Compact, Best Interactive Program, Most Useful, and
X    anything so unusual and creative that it deserves an award.
X    The judges will choose the winners of each category.
X    Alena Lacova  is a system  administrator at NIKHEF  (Institute for High
X    Energy and Nuclear  Physics) in the  Netherlands. She is  the author of
X    The PostScript Chaos  Programs, which draw  Julia sets, Mandelbrot sets
X    and other kinds of fractal functions.
X    Jonathan Monsarrat is a graduate  student from MIT and Brown University
X    in  the  U.S.A. He  is  the  FAQ maintainer  for  the  Usenet newsgroup
X    comp.lang.postscript and the author of The PostScript Zone and LameTeX.
chmod 0444 obfuscate.info ||
echo "restore of obfuscate.info failed"
set `wc -c obfuscate.info`;Wc_c=$1
if test "$Wc_c" != "6418"; then
	echo original size 6418, current size $Wc_c
fi
exit 0
Sunnyvale residents: Vote Landon Noll for Sunnyvale City Council seat 1.
