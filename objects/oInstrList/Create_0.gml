/// @descr drawing instrument list

instr_list = ds_list_create();
ores_list = ds_list_create();
with oRules {
	var instrs = self.instruments;
	var ores = self.ores;
	var instr_map = self.instr_to_ore_eq_map;
}

var i;
var offset = 0;
var ores_exist = ds_list_create();
for (i=0; i < ds_list_size(instrs); i++) {
	var cur_instr = ds_list_find_value(instrs, i);
	var cur_i = instance_create_depth(0,0,0,cur_instr);
	if not ds_map_exists(instr_map, cur_i.in_game_obj) {
		var obj = instance_create_depth(x, y + offset, depth-1, cur_instr);
		ds_list_add(instr_list, obj);
		offset += obj.sprite_height + 5;
	} else {
		ds_list_add(ores_exist, instr_map[? cur_i.in_game_obj]);
	}
	instance_destroy(cur_i);
}

var xoffset = 40;
offset = 0;
for (i=0; i < ds_list_size(ores); i++) {
	var cur_ore = ds_list_find_value(ores, i);
	var cur_i = instance_create_depth(0,0,0,cur_ore);
	if ds_list_find_index(ores_exist, cur_i.in_game_obj) == -1 {
		var obj = instance_create_depth(x + xoffset, y + offset, depth-1, cur_ore);
		ds_list_add(ores_list, obj);
		offset += obj.bbox_bottom - obj.bbox_top + 5;
	}
	instance_destroy(cur_i);
}
depth = 0;