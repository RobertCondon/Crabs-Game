	argument0 = AttackKey
Damdge = 5;
if(sprite_index != spr_Claw_BasicAttack) {
	sprite_index = spr_Claw_BasicAttack;
	image_index = 0;
	ds_list_clear(HitBy);
}

mask_index = spr_Claw_BasicAttack_collision;
var HitByAttack = ds_list_create();
var Hits = instance_place_list(x,y,obj_Chest_RottenWood, HitByAttack, false);
if(Hits > 0) {
	for(var i = 0; i < Hits; i += 1) {
		//If instance hasn't beem hit once
		var HitID = HitByAttack[| i];
		//^^^^ is a shorter version of ds_list_find_value(HitByAttack, i);
		if(ds_list_find_index(HitBy, HitID) == -1){
			ds_list_add(HitBy, HitID);
			with(HitID) {
				BeenHit = true;	
			}
		}
	}
}
ds_list_destroy(HitByAttack);
var HitByAttack = ds_list_create();
var Hits = instance_place_list(x,y,obj_HouseDoor, HitByAttack, false);
if(Hits > 0) {
	for(var i = 0; i < Hits; i += 1) {
		//If instance hasn't beem hit once
		var HitID = HitByAttack[| i];
		//^^^^ is a shorter version of ds_list_find_value(HitByAttack, i);
		if(ds_list_find_index(HitBy, HitID) == -1){
			ds_list_add(HitBy, HitID);
			with(HitID) {
				BeenHit = true;	
			}
		}
	}
}
ds_list_destroy(HitByAttack);
var HitByAttack = ds_list_create();
var Hits = instance_place_list(x,y,obj_Puffer, HitByAttack, false);
if(Hits > 0) {
	for(var i = 0; i < Hits; i += 1) {
		//If instance hasn't beem hit once
		var HitID = HitByAttack[| i];
		//^^^^ is a shorter version of ds_list_find_value(HitByAttack, i);
		if(ds_list_find_index(HitBy, HitID) == -1){
			ds_list_add(HitBy, HitID);
			with(HitID) {
				hp -= other.Damdge;	
			}
		}
	}
}
ds_list_destroy(HitByAttack);
var HitByAttack = ds_list_create();
var Hits = instance_place_list(x,y,obj_StringRay, HitByAttack, false);
if(Hits > 0) {
	for(var i = 0; i < Hits; i += 1) {
		//If instance hasn't beem hit once
		var HitID = HitByAttack[| i];
		//^^^^ is a shorter version of ds_list_find_value(HitByAttack, i);
		if(ds_list_find_index(HitBy, HitID) == -1){
			ds_list_add(HitBy, HitID);
			with(HitID) {
				hp -= other.Damdge;	
			}
		}
	}
}
ds_list_destroy(HitByAttack);

mask_index = spr_Claw_BasicAttack;
if(scr_AnimationEnd()) {
	sprite_index = spr_Claw_Idel;
	state = CLAWSTATE.IDEL;
}