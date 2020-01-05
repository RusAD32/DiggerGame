/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white)
draw_set_alpha(0.5)
draw_circle(bbox_left + sprite_width/2-1, bbox_top + sprite_height/2-1, sprite_width*sqrt(2)/2, false)
//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
draw_set_alpha(1)
draw_set_color(c_black)
draw_self()
