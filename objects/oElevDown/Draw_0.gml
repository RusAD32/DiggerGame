/// @description Insert description here
// You can write your code in this editor
draw_self();
if cur_state == el_state.ACTIVATING {
	draw_set_alpha(0.1);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	draw_set_alpha(1);
	draw_text(x, y, ceil(go_down_countdown / 60))
}