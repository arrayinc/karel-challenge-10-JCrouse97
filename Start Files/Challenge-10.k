/* File: Challenge-10.k
 ---------------------------
In this exercise, your job is to get Karel to create a checkerboard pattern of
beepers inside an empty rectangular world.

This problem has a nice decomposition structure along with some interesting
algorithmic issues. As you think about how you will solve the problem,
you should make sure your solution works with checkerboards that are different
in size from the standard 8×8 checkerboard shown in the example. Odd-sized
checkerboards are tricky, and you should make sure that your program generates
the following pattern in a 5×3 world.

Another special case you need to consider is that of a world that is only
one column wide or one row high.
*/

//-------------------LOCAL LIBRARY---------------------

//***KAREL MUST START FACING RIGHT***

import "turns";

function toWall(){
	while(frontIsClear()){
		move();
	}
}

function up() {
	turnLeft();
	move();
	turnRight();
}

function right() {
	move();
}

function left() {
	turnAround();
	move();
	turnAround();
}

function down() {
	turnRight();
	move();
	turnLeft();
}

//-----------------------Actual Program-----------------------------