/// @description Insert description here
// You can write your code in this editor

instr_offset = 30;
instr_cur_x_offs = 0;
instr_cur_y_offs = 0;
instr_offs_timeout = 10;
instr_offs_cur_timeout = 0;

spd = 3;

grv = 0.25;

hspd = 0;
vspd = 0;

tools_avail = ds_list_create()
ds_list_copy(tools_avail, oRules.instruments);
var tmp_obj = instance_create_depth(x, y, depth-1, tools_avail[| 0]);
tool_spawned = instance_create_depth(x, y, depth-1, tmp_obj.in_game_obj);
instance_destroy(tmp_obj);
instr_collected = ds_list_create();
ore_collected = ds_list_create();