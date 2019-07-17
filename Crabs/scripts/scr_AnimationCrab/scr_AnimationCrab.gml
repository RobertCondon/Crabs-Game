//The animation for the crab in crab form.
hsp = obj_Player.hsp
Selfx = obj_Player.x
Selfy = obj_Player.y
partStep_sys = obj_Player.partStep_sys
PartStep_emit = obj_Player.PartStep_emit
PartStep = obj_Player.PartStep
StepColour = obj_BelowPlayerLeft.StepColour
TurnOffJump = obj_Player.TurnOffJump;

if(AmFlat) {
	if (!obj_Player.collisionJump or obj_Player.Jumping == true){
			obj_Player.sprite_index = spr_NewPlayer_JumpFlat
			if(image_index <= 3) {
				image_speed = 1;
			} else {
				image_speed = 0;
			}
	} else {
		if(obj_Player.sprite_index == spr_NewPlayer_JumpFlat) {
			obj_Player.sprite_index = spr_NewPlayer_Flat;
			image_index = 6;
		} else {
			obj_Player.sprite_index = spr_NewPlayer_Flat;
		}
		image_speed = 1;
		if(image_index >= 8) {
			image_speed = 0;
		}
	}
} else {
	if (!obj_Player.collisionJump or obj_Player.Jumping == true)
		{
			obj_Player.sprite_index = spr_NewPlayer_Jump
			image_speed = 0;
				
			if(Jumping == true) {
				image_index = 3;
			}
			else if(obj_Player.vsp >= 0) {
				image_index = 2;
			} else { 
				image_index = 1;	
			}
		}
		else
		{
			//On_Wall = 1;
			if (hsp == 0)
			{
				obj_Player.sprite_index = spr_NewPlayer_idel;
			}
			else
			{
				if((image_index >= 7 and image_index <= 9) and (StepColour != noone)){
					part_type_color1(PartStep, StepColour);
					part_emitter_region(partStep_sys, PartStep_emit, Selfx-24, Selfx-20, Selfy+32, Selfy+31, ps_shape_rectangle, ps_distr_gaussian)
					part_emitter_burst(partStep_sys, PartStep_emit, PartStep, 4);
					audio_play_sound(snd_Effect_Step,2,false);
				}
				if (hsp > 1)
				{
					obj_Player.sprite_index = spr_NewPlayer_RunLeft
					obj_Player.image_speed = -2.5
				}
				else
				{
					obj_Player.sprite_index = spr_NewPlayer_RunLeft
					obj_Player.image_speed = 2.5
				}
			}
		}
}
