/// @description Insert description here
// You can write your code in this editor
draw_self()
distance_player = distance_to_object(o_Player);
if (distance_player <= los)
{
	if change = 0{
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_set_font(fnt_Main);
		draw_text(self.x, self.y-30, script_say)
		if sTwo = true{
			alarm[1] = 200
			sTwo = false
		}
	}
	if change = 1{
			draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_set_font(fnt_Main);
		draw_text(self.x, self.y-30, script_two)
		if sTwo = true{
			alarm[1] = 60
			sTwo = false
		}
	}
}

