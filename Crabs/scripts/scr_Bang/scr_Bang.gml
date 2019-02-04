//Makes the bang from the wand dissapate
collisionJump = obj_Player.collisionJump;
hsp_move = obj_Player.hsp_move;
bang = obj_Player.bang
grv = obj_Player.grv
Vbang = obj_Player.Vbang


if(obj_Player.PerfectPoint and Vbang > 0) {
	VbangLarge = 0.05;	
} 
if(collisionJump){
	VbangLarge = 0.9;
}

if (bang > -0.2) and (bang < 0.2){

	bang = 0
}else{
	//if flying use momentam otherwise use friction kidna thing
	if(collisionJump) {
		if (bang > 0)
		{
			bang -= 0.10;
		}
		if (bang < 0)
		{
			bang += 0.10;
		}
	} else {
		if(bang > 0 and hsp_move < 0) {
			bang -= 0.10;	
		}
		if(bang < 0 and hsp_move > 0) {
			bang += 0.10;	
		}
		
	}
}

	
if stop < 0{
	grv = 0.2
	if (Vbang > -0.2) and (Vbang < 0.2)
	{
		Vbang = 0
	}else{
		if (Vbang < -1) or (Vbang > 1)
		{
			if (Vbang > 0)
			{
				Vbang -= VbangLarge;
			}
			if (Vbang < 0)
			{
				Vbang += VbangLarge;
			}
		}else{
			if (Vbang > 0)
			{
				Vbang -= 0.1;
			}
			if (Vbang < 0)
			{
				Vbang += 0.1;
			}
		}
	}
}else{
	grv = 0.01
}