/// @description Insert description here
// You can write your code in this editor
if(global.stop == false and stun == false){
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
	stuned = false;
	image_speed = 1;
} else {
	if(stun == true and stuned == false) {
		alarm[2] = 120;	
		stuned = true;
		image_speed = 0;
	}
}

if (hp <= 0 and Killed == false)
{
	audio_play_sound(snd_Effect_Puffer_ChargeUpBoom,2,false);
	alarm[0] = 12
	alarm[1] = 11
	BigBang = true
	sprite_index = spr_PufferBang
	image_speed = 1.2
	Killed = true;
}
if(place_meeting(x,y-14, obj_Player) and Killed == false) {
	hp -= 5;
	with(obj_Player) {
		vsp -= 1;	
	}
}