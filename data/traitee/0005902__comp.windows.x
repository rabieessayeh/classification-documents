I understood that there are two methods to connect application code to widgets:
                       callbacks and actions
The problem I face now is that I have a quite long piece of application code
that performs a lot of drawing into a window. I want to connect this to a
widget. No problem so far. I could use a callback function or an action to do this, processing any events afterwards.
But because the drawing takes some while, I want the application code sequence
to be able to be interrupted by events. Then I want to handle the events
and resume with processing the application code at the point it was
interrupted.
It seems to me that this isn't possible, but how can I give the user the
impression that his inputs are immediately processed ?
Has anybody an idea?
Please answer via e-mail.
Thanks in advance.
Soenke
Soenke Voss                                                Faculty of Economics
soenke@wiwi12.uni-bielefeld.de                          University of Bielefeld
                                                             W-4800 Bielefeld 1
                                                                        Germany
The only difference between me and a madman is
that I am not mad ! (Salvador Dali)
