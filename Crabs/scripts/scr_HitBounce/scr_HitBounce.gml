HitByThem = argument0
Hitamount = argument1
Hitamount = 10
BeenHit = obj_Player.BeenHit


if(place_meeting(obj_Player.x, obj_Player.y+2, HitByThem)){
	BeenHit = true
	o_Player.vsp = -6
	
}else{
	if(BeenHit == true){
		obj_Player.hp -= 1;
		obj_Player.alarmActive = true;
		BeenHit = false
	}
}
	