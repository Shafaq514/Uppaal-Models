//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
Is there any deadlock?
*/
A[] not deadlock

/*
Jobbers get hard tasks
*/
E<> (jobber1.hard || jobber2.hard || jobber3.hard || jobber4.hard)

/*
When hammer is taken any jobber is doing hard task.
*/
A[] (hammer.taken==(jobber1.hard || jobber2.hard || jobber3.hard || jobber4.hard))

/*
When malllet is taken any jobber is doing hard task
*/
A[] (mallet.taken==(jobber1.hard || jobber2.hard || jobber3.hard || jobber4.hard))

/*
There exists a future state when any jobber has easy tasks assigned.
*/
E<> (jobber1.easy || jobber2.easy || jobber3.easy || jobber4.easy)
