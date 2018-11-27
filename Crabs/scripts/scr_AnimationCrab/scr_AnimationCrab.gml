//The animation for the crab in crab form.
hsp = obj_Player.hsp
Selfx = obj_Player.x
Selfy = obj_Player.y
partStep_sys = obj_Player.partStep_sys
PartStep_emit = obj_Player.PartStep_emit
PartStep = obj_Player.PartStep
StepColour = obj_BelowPlayerLeft.StepColour
TurnOffJump = obj_Player.TurnOffJump;


if (!obj_Player.collisionJump)
		{
			//On_Wall = 0;
			if(TurnOffJump == false) {
				obj_Player.sprite_index = spr_NewPlayer_Jump;
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