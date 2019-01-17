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
			//Right
			image_angle = 0
			image_xscale = -1;
			image_yscale = 1;
		} else if(direction > 170 and direction < 190) {
			//Left
			image_angle = 180
			image_xscale = -1;
			image_yscale = -1;
		} else if(direction > 70 and direction < 110) {
			//Up
			image_angle = 90;
			image_xscale = -1;
			image_yscale = -1;
		} else if(direction > 250 and direction < 290) {
			//down
			image_angle = 270;
			image_xscale = -1;
			image_yscale = -1;
		}
		show_debug_message(direction);
		/*if(direction < 30 and direction > -30) {
			image_angle = 0;	
			image_xscale = 1;
		} else if(direction > 50 and direction < 70) {
			image_angle = 60;	
			image_xscale = 1;
		} else if(direction > 90 and direction < 110) {
			image_angle = 100;	
			image_xscale = 1;	
		} else if(direction > 130 and direction < 150) {
			image_angle = 140;	
			image_xscale = 1;
		} else if(direction > 170 and direction < 190) {
			image_angle = 0;	
			image_xscale = -1;
		} else if(direction > 210 and direction < 230) {
			image_angle = 60;	
			image_xscale = -1;
		} else if(direction > 250 and direction < 270) {
			image_angle = 140;
			image_xscale = -1;
		} else if(direction > 290 and direction < 310) {
			image_angle = 300;	
			image_xscale = -1;
		} else if(direction > 330 and direction < 350) {
			image_angle = 340;	
			image_xscale = -1;
		} */
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
				image_xscale = -1;
				image_yscale = 1;
				alarm[0] = 30
			} 
		
	}

	//Attack
	if(other.GotPlayer == false or distance_to_object(MyTarget) > 2) {
		AttackInRange = false;	
	} else {
		AttackInRange = true	
	}
	
} else {
	image_speed = 0;
	if(stun == true and stuned == false) {
		alarm[2] = 120;	
		stuned = true;
	}
	
//hp system
if(hp <= 0) {
	instance_destroy()
	instance_destroy(planner);	
	instance_destroy(MyTail);	
	instance_destroy(MyTarget);
}
}