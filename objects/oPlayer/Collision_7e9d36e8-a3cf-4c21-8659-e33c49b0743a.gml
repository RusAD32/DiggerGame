/// @description Insert description here
// You can write your code in this editor
var i;

for (i=0; i<ds_list_size(instr_collected); i++) {
	ds_list_add(oRules.instruments, instr_collected[| i])
}
for (i=0; i<ds_list_size(ore_collected); i++) {
	ds_list_add(oRules.ores, ore_collected[| i])
}
room_goto(roomLevelSelect);