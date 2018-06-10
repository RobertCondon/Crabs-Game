/// @description Insert description here
// You can write your code in this editor
/// Movement
// You can write your code in this editor

// Starting veriables

if global.stop == false{
	if global.Invert = false{
		key_right = keyboard_check(ord("D"));
		key_left = keyboard_check(ord("A"));
		key_up = keyboard_check_pressed(ord("W"));
	
	}else{
		key_left = keyboard_check(vk_left)
		key_right = keyboard_check(vk_right)
		key_up = keyboard_check_pressed(vk_up)
	
	}

	//Restart
	if keyboard_check(ord("R")){
		game_restart()
	}
	//Movement
	if keyboard_check(ord("P")){
		if (TestSpeed == true){
			TestSpeed = false
		}else{
			TestSpeed = true
		}
	}
	//So that if you press both keys it negates both.
	
	//ShockWave form Barrel
	stop -= 1
	//acceleration and deceleration
	
	//Slows the movement down
	if (bang > -0.2) and (bang < 0.2)
	{
		bang = 0
	}else{
	
		if (bang > 0)
		{
			bang -= 0.10;
		}
		if (bang < 0)
		{
			bang += 0.10;
		}

	}
	if stop < 0{
		grv = 0.2
		if (Vbang > -0.2) and (Vbang < 0.2)
		{
			Vbang = 0
		}else{
			if (Vbang < -1) or (Vbang > 1)
			{
				if (Vbang > 0)
				{
					Vbang -= 0.9;
				}
				if (Vbang < 0)
				{
					Vbang += 0.9;
				}
			}else{
				if (Vbang > 0)
				{
					Vbang -= 0.1;
				}
				if (Vbang < 0)
				{
					Vbang += 0.1;
				}
			}
		}
	}else{
		grav = 0.01
	}
	//It's times so it can also work with a negtive
	hsp_move = Approach(hsp_move, (key_right - key_left)*walksp, 0.5);
	hsp = hsp_move + bang;
	vsp = vsp + grv + Vbang
	

	if (place_meeting(x, y+1, o_Wall)) and (key_up)
	{
	
		vsp = JumpHight
	
	}

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

	if (!place_meeting(x, y+1, o_Wall))
	{
		On_Wall = 0;
		sprite_index = spr_NewPlayer_Jump;
	}
	else
	{
		On_Wall = 1;
		if (hsp == 0)
		{
			sprite_index = spr_NewPlayer_idel;
		}
		else
		{
			if (hsp > 1)
			{
				sprite_index = spr_NewPlayer_RunLeft
				image_speed = -2.5
			}
			else
			{
				sprite_index = spr_NewPlayer_RunLeft
				image_speed = 2.5
			}
		}
	}

	//Win
	if (place_meeting(x, y+1, o_Win))
	{ 
		show_message("YOU WIN");
		show_message("You got "+ string(global.pickles) + " Outta 2 pickles");
		room_goto(RoomGo);
	}

 

	//Damdge management
	if hp == 1{
		if alarmActive == true{
			alarm[1] = 2
			alarm[0] = 200
		}
		alarmActive = false
	}else if hp == 0{
		show_debug_message("You lose")
		game_restart()
	}
	if visableness == false{
		self.visible = false
	}else{
		self.visible = true
	}
}else{
	sprite_index = spr_NewPlayer_idel
}



