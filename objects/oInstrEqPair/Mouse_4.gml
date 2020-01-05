/// @description Insert description here
// You can write your code in this editor

if oMouse.obj_stored != 0 {
	if object_get_parent(oMouse.obj_stored.object_index) == oInstrumentMenuBase {
		var stored = instr;
		instr = oMouse.obj_stored;
		oMouse.obj_stored = stored;
		instr.x = -instr.sprite_width - 10;
		instr.y = y;
		instr.depth = depth+1;
	} else if object_get_parent(oMouse.obj_stored.object_index) == oOreMenuBase {
		var stored = ore;
		ore = oMouse.obj_stored;
		oMouse.obj_stored = stored;
		ore.x = -instr.sprite_width - 10;
		ore.y = y;
		ore.depth = depth+1;
	}
} else {
	if mouse_x < bbox_left + sprite_width / 2 {
		show_debug_message(self);
		oMouse.obj_stored = instr;
		show_debug_message(oMouse.obj_stored);
		instr = 0;
	} else {
		oMouse.obj_stored = ore;
		ore = 0;
	}
}