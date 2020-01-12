/// @description Insert description here
// You can write your code in this editor

go_down_countdown = 60;
max_countdown = 60;

init_y = y;
spd = 1;

enum el_state {
	PASSIVE,
	ACTIVATING,
	DESCENDING,
	ASCENDING,
}

cur_state = el_state.PASSIVE;