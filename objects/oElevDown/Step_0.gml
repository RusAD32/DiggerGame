/// @description Insert description here
// You can write your code in this editor

show_debug_message(cur_state)
switch cur_state {
	case el_state.PASSIVE: {
		if place_meeting(x, y-1, oPlayer) {
			cur_state = el_state.ACTIVATING;
		}
		break;
	}
	case el_state.ACTIVATING: {
		if place_meeting(x, y-1, oPlayer) {
			go_down_countdown--;
			if go_down_countdown <= 0 {
				cur_state = el_state.DESCENDING;
			}
		} else {
			go_down_countdown = max_countdown;
			cur_state = el_state.PASSIVE
		}
		break;
	}
	case el_state.DESCENDING: {
		if place_meeting(x, y-1, oPlayer) {
			y += spd;
			with oPlayer {
				if !place_meeting(x, y+other.spd, oOre) {
					y += other.spd;
				}
			}
		} else {
			cur_state = el_state.ASCENDING;
		} 
		break;
	}
	case el_state.ASCENDING: {
		if !place_meeting(x, y-spd*2, oPlayer) && y != init_y {
			y = max(init_y, y-spd);
		} else if y == init_y {
			cur_state = el_state.PASSIVE;
		} else {
			cur_state = el_state.DESCENDING;
		}
	}
}