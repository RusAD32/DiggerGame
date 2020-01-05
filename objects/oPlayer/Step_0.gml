/// @description Insert description here
// You can write your code in this editor

var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var key_instr = mouse_check_button_pressed(mb_left);

var move = key_right - key_left;

var i;
for (i=0; i<ds_list_size(tools_avail);i++) {
	if keyboard_check(ord("1")+i) {
			instance_destroy(tool_spawned);
			var tmp_obj = instance_create_depth(x, y, depth-1, tools_avail[| i]);
			tool_spawned = instance_create_depth(x, y, depth-1, tmp_obj.in_game_obj);
			instance_destroy(tmp_obj);
	}
}

hspd = move * spd;

vspd += grv;
instr_offs_cur_timeout = max(instr_offs_cur_timeout - 1, 0);

if place_meeting(x+hspd, y, oOre) {
	while !place_meeting(x+sign(hspd), y, oOre) {
		x += sign(hspd);
	}
	hspd = 0;
}
if place_meeting(x, y+vspd, oOre) {
	while !place_meeting(x, y+sign(vspd), oOre) {
		y += sign(vspd);
	}
	vspd = 0;
}

if instr_offs_cur_timeout == 0 and not (instr_cur_x_offs == 0 and instr_cur_y_offs == 0) {
	instr_cur_x_offs = 0;
	instr_cur_y_offs = 0;
	tool_spawned.active = false;
}

if key_instr != 0 and instr_offs_cur_timeout == 0 {
	var angle = tool_spawned.image_angle / 180 * pi;
	instr_cur_x_offs += instr_offset * cos(angle);
	instr_cur_y_offs += instr_offset * (-sin(angle));
	instr_offs_cur_timeout = instr_offs_timeout;
	tool_spawned.active = true;
} 

x += hspd;
y += vspd;
tool_spawned.x = x + instr_cur_x_offs;
tool_spawned.y = y + instr_cur_y_offs;