/// @description Insert description here
// You can write your code in this editor
if object_get_parent(other.object_index) != oOreMenuBase {
	ds_list_add(instr_collected, other.object_index);
	instance_destroy(other);
}