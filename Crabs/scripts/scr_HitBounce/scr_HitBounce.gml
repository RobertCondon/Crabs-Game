HitByThem = argument0
Hitamount = argument1
Shunt = argument2;
StingRayId = argument3;
BeenHit = obj_Player.BeenHit

if(place_meeting(obj_Player.x, obj_Player.y+2, HitByThem)){
	BeenHit = true
	o_Player.vsp = Hitamount
	if(Shunt == true) {
		o_Player.bang -= 1+ lengthdir_x(3 , point_direction(o_Player.x, o_Player.y, StingRayId.x, StingRayId.y)) ;
	}
	
}else{
	if(BeenHit == true){
		obj_Player.hp -= 1;
		obj_Player.alarmActive = true;
		BeenHit = false
	}
}
	