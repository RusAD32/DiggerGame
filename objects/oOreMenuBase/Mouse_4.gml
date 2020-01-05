/// @description Insert description here

if instance_exists(oMouse) and oMouse.obj_stored == 0 {
	with oInstrList {
		ds_list_delete(ores_list, ds_list_find_index(ores_list, self));	
	}
	oMouse.obj_stored = self;
}