/// @description Insert description here
// You can write your code in this editor
distance_player = distance_to_object(o_Player);
if(global.stop == false){
	hsp = walksp;
	if (place_meeting(x+hsp, y, o_Wall))
	{
		//This is always checking if you havn't hit the wall yet
		while (!place_meeting(x + sign(hsp), y, o_Wall))
		{
			x = x + sign(hsp);	
		}	
		if Has_Hit = 1{
			Has_Hit = 2
		}else{
			Has_Hit = 1
		}
	}
	if(HoldStill == false){
		if (Has_Hit = 1)
		{
			image_xscale = -1
			if walksp == -0.5{
				x = self.x + 35
			}
			walksp = 0.5
		}else{
			image_xscale = 1
			if walksp == 0.5{
				x = self.x - 35
			}
			walksp = -0.5
		}
	}else{
		walksp = 0
	}
	x = x + hsp
	//Has hit bullet
	if (place_meeting(x+hsp, y, o_Wand_bullet))
	{
		instance_destroy();

	}
	if(distance_player > 5) {
		Hit_Player = false;	
	}
	if(distance_player < 20) {
		HoldStill = true;
		sprite_index = spr_TempLobsterAttack;
	} else {
		HoldStill = false;
		sprite_index = spr_TempLobsterWalk;
	}
}