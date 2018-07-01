/// @description Insert description here
// You can write your code in this editor
map_string = "abcdefghijklmnopqrstuvwxyz"
Test_Font = font_add_sprite_ext(spr_testfont, map_string, false,0);
draw_set_font(Test_Font)

draw_text(x,y, "does this work")