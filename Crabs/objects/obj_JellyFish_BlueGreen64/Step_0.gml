/// @description Insert description here
// You can write your code in this editor

MyMate.lx = x
MyMate.ly = y
MyMate.rad = 100;


collisionSquare = collision_rectangle(x + x_Width , y + y_Height , x - x_Width , y - y_Height , obj_Player, false, false)


if(distance_to_object(obj_Player) < 50 and y >= Oldy) {
	StartMovement = true;
	FloatDown = false;
} else if(y < Oldy and StartMovement == false and Switch == false and FloatDown == false) {
	alarm[0] = 22;
	alarm[1] = 10;
	Switch = true;
	
} else if(y < Oldy and StartMovement == false and image_index >= 12) {
	image_speed = 0;
}
if(y < Oldy and FloatDown == true) {
	Switch = false;
	y += 1;
	if(place_meeting(obj_Player.x, obj_Player.y, collisionSquare)){
		obj_Player.MoveByY = 1;
	}
}
if(y >= Oldy and IdealFall == true) {
	image_speed = -2;
	if(image_index <= 2) {
		sprite_index = spr_JellyBoi_BlueGreen64;
		IdealFall = false;
	}
}

if(StartMovement == true) {
	sprite_index = 	spr_JellyBoi_BlueGreen_Swim;
	image_speed = 2;
	if(image_index > 0 and image_index <= 2) {
		Movement = 5;
	}
	if(image_index > 12 and image_index <= 14) {
		Movement = 10;
	}
	if(image_index >= 21) {
		StartMovement = false;
		sprite_index = spr_JellyBoi_BlueGreen64;
	}
	y -= Movement;
	if(Movement > 0) {
		if(place_meeting(obj_Player.x, obj_Player.y, collisionSquare)){
			obj_Player.MoveByY = -Movement;
		}

		Movement -= MovementLoss;
	} else {
		Movement = 0;	
	}
	
}


if(place_meeting(obj_Player.x, obj_Player.y, collisionSquare)){
	obj_Player.TurnOffJump = true;
}