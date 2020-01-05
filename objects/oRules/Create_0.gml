/// @description Object that stores all the rules of digging

instruments = ds_list_create()
ores = ds_list_create()

instr_eq_avail = 3
instr_le_avail = 1

instr_to_ore_eq_map = ds_map_create()
instr_to_ore_le_map = ds_map_create()

ds_list_add(instruments, oShovelMenu)
ds_list_add(ores, oDirtMenu)
