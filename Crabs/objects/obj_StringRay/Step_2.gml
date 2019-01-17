/// @description Insert description here
// You can write your code in this editor
if(global.stop == false and stun == false) {
	//motion_add(point_direction(x,y, planner.x, planner.y), 1);
	
	if(image_index >= 7) {
		speed = 6	
	}
	if(speed > 1) {
		speed -= 0.001;	
	}

	target_x = MyTarget.x;
	target_y = MyTarget.y;
	if(GotPlayer == false) {
		mp_linear_path_object(planner.path, target_x, target_y, speed, o_Sand) 
		path_start(planner.path, 4, 0, 0)
	} else {
		path_end();
		mp_potential_step_object( target_x, target_y, 2, o_Sand) 	
	}

	with(planner) {
		x = follower.x;
		y = follower.y;
		if(other.AttackInRange == false) {
			scr_GridExe(other.target_x, other.target_y);
		} else {
			speed = 0;	
			other.speed = 0;
			other.image_index = 8;
		} 
	
	}
	with(MyTarget) {
		follow = other.GotPlayer;	
	}
	with(MyTail) {
		
		x = other.x+4;
		y = other.y-2;
		image_angle = other.image_angle;
		image_xscale = other.image_xscale
		image_yscale = other.image_yscale;
		//Attacking code for the tail
		if(other.AttackInRange == true) {
			if(other.Attacked == false) {
				sprite_index = spr_StingRaytail_Attack;
				mask_index = spr_StingRaytail_AttackHitBox;
				if(place_meeting(x, y, obj_Player) and other.HitThem == false) {
					with(obj_Player) {
						script_execute(scr_HitBounce, obj_StingRayTail, -3, true, other);
					}
			
					other.HitThem = true;
				}
				if(scr_AnimationEnd()) {
					sprite_index = spr_StingRaytail_Ideal;
					mask_index = spr_StingRaytail_Ideal;
					other.Attacked = true;	
					other.HitThem = false
					other.alarm[1] = 90
				}
		
			}
		} else if(sprite_index == spr_StingRaytail_Attack) {
			if(scr_AnimationEnd()) {
					sprite_index = spr_StingRaytail_Ideal;
					mask_index = spr_StingRaytail_Ideal;
					other.Attacked = true;	
					other.HitThem = false
					other.alarm[1] = 30
				}
		}
	}
} else {
	speed = 0;
	path_end();
	with(planner) {
		speed = 0;	
	}
}