 /// @description Insert description here
// You can write your code in this editor

MyMate.lx = x
MyMate.ly = y
MyMate.rad = 100;


collisionSquare = collision_rectangle(x + x_Width , y + y_Height -14, x - x_Width, y - y_Height - 14, obj_Player, false, false)
collisionLine = collision_line(x + x_Width, y - y_Height - 14, x - x_Width, y - y_Height - 14, obj_Player, false, false);
collisionSquareTenticals = collision_rectangle(x + x_Width , y + y_Height -14, x - x_Width, y + y_Height + 14, obj_Player, false, false)

if((collisionLine or collisionSquareTenticals) and y >= Oldy) {
	StartMovement = true;
	FloatDown = false;
} else if(y < Oldy and StartMovement == false and Switch == false and FloatDown == false) {
	alarm[0] = 22;
	alarm[1] = 10;
	Switch = true;
	
} else if(y < Oldy and StartMovement == false and image_index >= 12) {
	image_speed = 0;
}

//Moving so player doesn't get stuck.
if(collisionSquareTenticals and obj_Player.OnFloor == true) {
	StartMovement = true;
	Switch = false;
	FloatDown = false;
}

if(y < Oldy and FloatDown == true) {
	Switch = false;
	Movement = 1;
	
} else if(StartMovement = 0) {
	Movement = 0;

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
		Movement = 6;
	}
	if(image_index > 12 and image_index <= 14) {
		Movement = 11;
	}
	if(image_index >= 21) {
		StartMovement = false;
		sprite_index = spr_JellyBoi_BlueGreen64;
	}
	
	if(Movement > 0) {
		

		Movement -= MovementLoss;
	} else {
		Movement = 0;	
	}
	
}




if(StartMovement == true) {
	if(collisionSquare) {
		with(obj_Player) {
			y -= other.Movement;	
		}
	}
	y -= Movement;
} else {
	y += Movement;	
	if(collisionSquare) {
		with(obj_Player) {
			y += other.Movement;	
		}
	}
}


obj_Player.MoveByY = 0;