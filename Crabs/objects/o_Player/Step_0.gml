/// Movement
// You can write your code in this editor

// Starting veriables
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check_pressed(vk_space)
//Restart
if keyboard_check(ord("R")){
	game_restart()
}
//Movement
//So that if you press both keys it negates both.
var movement = key_right - key_left;
//ShockWave form Barrel
stop -= 1
//acceleration and deceleration
slow_move = movement /10
if (key_left = 0)
{
	while walksp < 0
	{
		walksp = walksp + 0.02
	}
}
if (key_right = 0)
{
	while walksp > 0
	{
		walksp = walksp - 0.02
	}
}

if (walksp <= 0.6) or (walksp >= -0.6)
{
	walksp += slow_move;
	image_speed += 0.01;
}
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
	grv = 0.15
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
hsp = (movement *0.8) + walksp + bang;
vsp = vsp + grv + Vbang

if (place_meeting(x, y+1, o_Wall)) and (key_up)
{
	
	vsp = -2.5
	
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
	walksp = 0;
}

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
	sprite_index = s_player_jump;
	image_speed = 1.5;
}
else
{
	On_Wall = 1;
	if (hsp == 0)
	{
		sprite_index = s_player_idel;
		image_speed = 1.5
	}
	else
	{
		if (hsp > 1)
		{
			sprite_index = s_player_walk_right
			image_speed = 1.5
		}
		else
		{
			sprite_index = s_player_walk_left
			image_speed = 1.5
		}
	}
}

//Win
if (place_meeting(x, y+1, o_Win))
{
	show_message("YOU WIN")
}








