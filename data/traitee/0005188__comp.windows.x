Hello world,
I want to write my Xt-application code like this:
    do_some_work();
    /* now I need some user input */
    XmCreateDialog();
    wait_for_user_input(input);
    if (input == "OK") {
       more_work();
    } else {
       other_work();
So "more_work() and other_work()" are not in callback functions but the
application simply waits for the user to answer the question.
How can I code this in my Xt/Motif-application?
Thanks very much in advance.
Greetings, Huub.
CWI, P.O. Box 4079 			Huub Bakker (huub@cwi.nl)
1009 AB Amsterdam
The Netherlands
Tel. 31 20 5924080
