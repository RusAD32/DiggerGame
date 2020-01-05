/// @description Insert description here
// You can write your code in this editor

with oInstrEqPair {
	if instr != 0 and ore != 0 {
		oRules.instr_to_ore_eq_map[? instr.in_game_obj] = ore.in_game_obj;
	}
}

room_goto(roomLevelSelect)