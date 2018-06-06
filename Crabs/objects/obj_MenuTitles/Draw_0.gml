/// @description Insert description here
// You can write your code in this editor
var i = 0;
repeat(buttons){
	draw_set_font(fnt_Menus);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	xx = menu_x + (150 + button_padding) * i;
	yy = menu_y + 100 + 900*(1-unfold[i]); 
	
	draw_set_color(c_dkgray);
	
	
	
	draw_set_color(c_white);
	if (menu_index == i) draw_set_color(c_aqua);
	draw_text(xx + button_width/2, yy + button_h/2, button[i]);
	i++;
}