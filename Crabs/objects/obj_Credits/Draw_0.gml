
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(fnt_Credits);
draw_set_color(c_black);


var c;
for (c = 0; c < array_length_1d(credits); c += 1)
{
	draw_text(x + space, y + (c * space), string(credits[c]))
	
}

