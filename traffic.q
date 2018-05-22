//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
Eventually every vehicle will get the center and will move.
*/
E<> (Vehicle1.move || Vehicle2.move || Vehicle3.move || Vehicle4.move)

/*
Deadlock avoidance that never all the vehicles will be stopped.
*/
E<> !(Vehicle1.stop && Vehicle2.stop && Vehicle3.stop && Vehicle4.stop)

/*
Mutual Exclusion
*/
A[] !(Vehicle1.move && Vehicle2.move && Vehicle3.move && Vehicle4.move)

/*
Is there any deadlock?
*/
A[] not deadlock
