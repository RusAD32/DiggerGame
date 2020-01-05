/// @description Insert description here
// You can write your code in this editor

draw_self();
var x_two_thirds_coord = bbox_left + sprite_width * 2 / 3;

if instr != 0 {
	draw_sprite(instr.sprite_index, instr.image_index, x, y);
}
if ore != 0 {
	draw_sprite(ore.sprite_index, ore.image_index, x_two_thirds_coord, y);
}