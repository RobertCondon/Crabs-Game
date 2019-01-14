/// @description Insert description here
// You can write your code in this editor
/*if(Looked == false) {
	alarm[0] = 25;
	Looked = true;
}*/
if(global.stop == false and stun == false) {
	image_speed = 1;
	if(mask_index == spr_StringRayBase) {
		show_debug_message("Ye");
	}
	if(GotPlayer = false) {
		if(direction < 30 and direction > -30) {
			image_angle = 0;	
			image_yscale = 1;	
		} else if(direction > 50 and direction < 70) {
			image_angle = 60;	
			image_yscale = 1;	
		} else if(direction > 90 and direction < 110) {
			image_angle = 100;	
			image_yscale = 1;	
		} else if(direction > 130 and direction < 150) {
			image_angle = 140;	
			image_yscale = 1;	
		} else if(direction > 170 and direction < 190) {
			image_angle = 180;	
			image_yscale = -1;	
		} else if(direction > 210 and direction < 230) {
			image_angle = 220;	
			image_yscale = -1;	
		} else if(direction > 250 and direction < 270) {
			image_angle = 260;	
			image_yscale = -1;	
		} else if(direction > 290 and direction < 310) {
			image_angle = 300;	
			image_yscale = -1;	
		} else if(direction > 330 and direction < 350) {
			image_angle = 340;	
			image_yscale = 1;	
		} 
	} else {
		image_angle = point_direction(x, y, obj_Player.x, obj_Player.y)
	}

	if(image_angle >= 180 and image_angle <= 360) {
	
	} else {

	}
	show_debug_message( direction)
	//The or within there is just that if your so fuckin close to the ray it'll notice you even if you're behind it
	if((point_in_triangle(obj_Player.x, obj_Player.y, x, y, x+lengthdir_x(coneOfSightLength,image_angle-25), y+lengthdir_y(coneOfSightLength,image_angle-25), x+lengthdir_x(coneOfSightLength,image_angle+25), y+lengthdir_y(coneOfSightLength,image_angle+25))) or distance_to_object(obj_Player) < 25) {
			collisionLine = collision_line(obj_Player.x, obj_Player.y, x, y, o_Sand, false, true);
			//show_message("got em");
			if(!collisionLine) {
				GotPlayer = true;
				alarm[0] = 30
			} 
		
	}

	//Attack
	if(other.GotPlayer == false or distance_to_object(obj_Player) > 3) {
		AttackInRange = false;	
	} else {
		AttackInRange = true	
	}
	id.x = x;
	if(AttackInRange == true) {
		if(Attacked == false) {
			sprite_index = spr_StringRayAttack;
			mask_index = spr_StringRayAttackHitBox;
			if(place_meeting(x, y, obj_Player) and HitThem == false) {
				with(obj_Player) {
					script_execute(scr_HitBounce, obj_StringRay, -3, true, other);
				}
			
				HitThem = true;
			}
			if(scr_AnimationEnd()) {
				sprite_index = spr_StringRayMovement;
				mask_index = spr_StringRayMovement;
				Attacked = true;	
				HitThem = false
				alarm[1] = 90
			}
		
		}
	} else if(sprite_index == spr_StringRayAttack) {
		if(scr_AnimationEnd()) {
				sprite_index = spr_StringRayMovement;
				mask_index = spr_StringRayMovement;
				Attacked = true;	
				HitThem = false
				alarm[1] = 30
			}
	}
} else {
	image_speed = 0;
	if(stun == true and stuned == false) {
		alarm[2] = 120;	
		stuned = true;
	}
	
}