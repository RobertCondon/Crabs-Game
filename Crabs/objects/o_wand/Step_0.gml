/// @description Insert description here
// You can write your code in this editor
x = o_Player.x - 11;
y = o_Player.y + 8;


image_speed= 1

Firing_Delay = Firing_Delay - 1
if Firing_Delay < 0{
	show_debug_message("GotHere too")
	sprite_index = spr_wand
	
}
recoil = max(0, recoil - 0.1)
if (keyboard_check_pressed(vk_left)) and (keyboard_check_pressed(vk_down) and (Firing_Delay < 0)){
	Firing_Delay = 60;
	image_angle = 235
	o_Player.bang += 3
	o_Player.Vbang -= 1.5
	
}
if (keyboard_check_pressed(vk_right)) and (keyboard_check_pressed(vk_down) and (Firing_Delay < 0)){
	Firing_Delay = 60;
	image_angle = 300
	o_Player.bang += -3
	o_Player.Vbang -= 1.5
	
}
if (keyboard_check_pressed(vk_down) and (Firing_Delay < 0)){
	
	Firing_Delay = 60;
	o_Player.Vbang -= 3
	image_angle = -90
}

if (keyboard_check_pressed(vk_right) and (Firing_Delay < 0)){
	Firing_Delay = 60;
	image_angle = 0
	o_Player.bang -= 4
}
if (keyboard_check_pressed(vk_left) and (Firing_Delay < 0)){
	Firing_Delay = 60;
	image_angle = 180
	o_Player.bang += 4
}
if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_right)){
	if (Firing_Delay = 60){
		show_debug_message("GotHere")
		sprite_index = spr_wandCD
		with (instance_create_layer(x, y, "Bullets", o_Wand_bullet))
		{
			speed = 4;
			direction = other.image_angle;
			image_angle = direction  ;
		}
		
	}
}


x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_x(recoil, image_angle);

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}

//animation