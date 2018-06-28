/// @description Insert description here
// You can write your code in this editor
/// Movement
// You can write your code in this editor

// Starting veriables

if global.stop == false{
	if global.Invert = false{
		key_right = keyboard_check(ord("D"));
		key_left = keyboard_check(ord("A"));
		key_up = keyboard_check(ord("W"));
		key_down = keyboard_check_pressed(ord("S"));
	}else{
		key_left = keyboard_check(vk_left);
		key_right = keyboard_check(vk_right);
		key_up = keyboard_check(vk_up);
		key_down = keyboard_check_pressed(vk_down);
	
	}
	//wall bullshit
	//No wall bullshit during squish
	SquareX = 26
	collisionSquare = collision_rectangle(x-SquareX, y-20, x+SquareX+1, y+32, o_Wall, false, false)
	
	if(SpuishedOffOn == false){
		collisionLine = collision_line(x, y+Yline, x+Xline, y+Yline, o_Wall, false, false)
		if(keyboard_key_press(vk_enter)){
			Draw_Enter = true
		}
		Yline = 32
		if(key_right)Xline = 27;
		if(key_left)Xline = -26;
		if((!key_right) and (!key_left))Xline = 0;
		//Restart
		if keyboard_check(ord("R")){
			game_restart()
		}
	}

	
	//ShockWave form Barrel
	stop -= 1
	//acceleration and deceleration
	
	//Slows the movement down
	script_execute(scr_Bang)
	//It's times so it can also work with a negtive
	hsp_move = Approach(hsp_move, (key_right - key_left)*walksp, 0.5);
	hsp = hsp_move + bang;
	
	

	if (place_meeting(x, y+1, o_Wall)) and (key_up)
	{
	
		vsp = JumpHight
	
	}
	
	script_execute(scr_SquishCrab)
	
	if((sprite_index == spr_NewPlayer_squishTunnel) and (path_index == -1)){
		sprite_index = spr_NewPlayer_squish
	}
	
	//Wall bullshit, slowdown
	if((!place_meeting(x, y+1, o_Wall)) and (collisionSquare)){
		if(collisionLine){
			if(SpuishedOffOn == false){
				if vsp > 0{
					vsp = vsp*0.1
				}
			}
		}
	}
	vsp = vsp + grv + Vbang
	//X axies Collision
	//Meaning if it meets o_Wall on hte x axies it will stop the movement
	if (place_meeting(x+hsp, y, o_Wall))
	{
		//This is always checking if you havn't hit the wall yet
		while (!place_meeting(x + sign(hsp), y, o_Wall))
		{
			x = x + sign(hsp);	
		}
		hsp = 0;
		if(TestSpeed = true){
			//hsp_move = 0;
		}
	}
	//show_debug_message(point_direction(obj_Player.x, obj_Player.y, o_Turret.x, o_Turret.y))	

	x = x + hsp

	//Y axies Collison 
	//Meaning if it meets o_Wall on the y axies it will stop the movement
	if (place_meeting(x, y+vsp, o_Wall))
	{
		//This is always checking if you havn't hit the wall yet
		while (!place_meeting(x, y+ sign(vsp), o_Wall))
		{
			y = y + sign(vsp);
		}	
		vsp = 0;
	}

	y = y + vsp;

	//Animation
	if(SpuishedOffOn == false){
		script_execute(scr_AnimationCrab)
	}

	//Win
	if (place_meeting(x, y+1, o_Win))
	{ 
		room_goto(RoomGo);
	}

 

	//Damdge management
	script_execute(scr_DamdgeControl)
	//Damdge from fire
	script_execute(scr_HitBounce, obj_fire, 2)
	
	
}else{
	sprite_index = spr_NewPlayer_idel
}



