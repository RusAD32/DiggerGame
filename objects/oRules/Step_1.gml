/// @description Insert description here
// You can write your code in this editor
if room == roomSettings and not instance_exists(oInstrEqPair) {
	var i;
	var offset = 0;
	var key = ds_map_find_first(instr_to_ore_eq_map);
	for (i = 0; i < instr_eq_avail; i++) {
		var obj = instance_create_depth(x, y+offset, depth-1, oInstrEqPair);
		if not is_undefined(key) {
			var instr_i = instance_create_depth(0,y+offset,depth-2,key);
			obj.instr = instr_i.menu_obj;
			instance_destroy(instr_i);
			var instr_m_i = instance_create_depth(0,y+offset,depth-2,obj.instr);
			instr_m_i.x = -instr_m_i.sprite_width - 10;
			var ore_val = instr_to_ore_eq_map[? key]
			var ore_i = instance_create_depth(0,y+offset,depth-2,ore_val);
			obj.ore = ore_i.menu_obj;
			key = ds_map_find_next(instr_to_ore_eq_map, key);
			instance_destroy(ore_i);
			var ore_m_i = instance_create_depth(0,y+offset,depth-2,obj.ore);
			ore_m_i.x = -ore_m_i.sprite_width - 10;
		}
		offset += obj.sprite_height + 5;
	}
}