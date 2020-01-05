/// @description Insert description here
// You can write your code in this editor
if oMouse.obj_stored != 0 and not collision_point(mouse_x, mouse_y, oInstrumentMenuBase, false, false) {
	if object_get_parent(oMouse.obj_stored.object_index) == oInstrumentMenuBase {
		ds_list_add(instr_list, oMouse.obj_stored);
	} else if object_get_parent(oMouse.obj_stored.object_index) == oOreMenuBase {
		ds_list_add(ores_list, oMouse.obj_stored);
	}
	oMouse.obj_stored = 0;
}