/// @description Insert description here
// You can write your code in this editor

if destruction_countdown == 0 {
	instance_destroy(self);
}

if destruct {
	destruction_countdown -= 1;
} else if place_meeting(x, y-1, oPlayer) {
	destruct = true	;
}
