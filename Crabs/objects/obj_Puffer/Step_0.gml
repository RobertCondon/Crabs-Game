/// @description Insert description here
// You can write your code in this editor
if(global.stop == false){
	hsp = walksp;
	GroundLine = collision_line(x+ForwardORBack+hsp, y,x+ForwardORBack+hsp, y+34, o_Wall, false, false);

	if (place_meeting(x+hsp, y, o_Wall) or !GroundLine)
	{
		
		if Has_Hit = 1{
			ForwardORBack = -30
			Has_Hit = 2
		}else{
			ForwardORBack = 30
			Has_Hit = 1
		}
	}
	if(BigBang == false){
		if (Has_Hit = 1)
		{
			image_xscale = -1
			/**if walksp == -0.5{
				x = self.x + 35
			}**/
			walksp = 0.5
		}else{
			image_xscale = 1
			/**if walksp == 0.5{
				x = self.x - 35
			}**/
			walksp = -0.5
		}
	}else{
		walksp = 0
	}
	x = x + hsp
	//Has hit bullet
	if (place_meeting(x+hsp, y, o_Wand_bullet))
	{
		audio_play_sound(snd_Effect_Puffer_ChargeUpBoom,2,false);
		alarm[0] = 12
		alarm[1] = 11
		BigBang = true
		sprite_index = spr_PufferBang
		image_speed = 1.2

	}
}