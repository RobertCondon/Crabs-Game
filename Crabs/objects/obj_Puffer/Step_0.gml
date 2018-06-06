/// @description Insert description here
// You can write your code in this editor
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
if (Has_Hit = 1)
{
	walksp = 0.5
}else{
	walksp = -0.5
}
x = x + hsp
//Has hit bullet
if (place_meeting(x+hsp, y, o_Wand_bullet))
{
	alarm[0] = 1

}
x = x