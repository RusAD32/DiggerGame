/// @description Insert description here
// You can write your code in this editor
if instance_exists(oPlayer) and ds_list_find_index(oRules.ores, object_index) {
	instance_destroy(self);
}