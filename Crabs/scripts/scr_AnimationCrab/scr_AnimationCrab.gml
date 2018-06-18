//On_Wall = obj_Player.On_Wall
hsp = obj_Player.hsp

if (!place_meeting(obj_Player.x, obj_Player.y+1, o_Wall))
		{
			//On_Wall = 0;
			obj_Player.sprite_index = spr_NewPlayer_Jump;
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