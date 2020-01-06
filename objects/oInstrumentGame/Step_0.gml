/// @description Insert description here
// You can write your code in this editor

if active and target_ore and place_meeting(x, y, target_ore) {
	active = false;
	var obj = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,target_ore, false, false);
	instance_destroy(obj);
} else {
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}