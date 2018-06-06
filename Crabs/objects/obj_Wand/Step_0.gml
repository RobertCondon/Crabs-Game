/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if global.stop == false{
	x = o_Player.x - 2;
	y = o_Player.y + 27;
	if global.Invert = true{
		Right_Key = keyboard_check_pressed(ord("D"));
		Left_Key = keyboard_check_pressed(ord("A"));
		Down_Key = keyboard_check_pressed(ord("S"));
	
	}else{
		Left_Key = keyboard_check_pressed(vk_left)
		Right_Key = keyboard_check_pressed(vk_right)
		Down_Key = keyboard_check_pressed(vk_down)
	}

	image_speed= 0.8

	Firing_Delay = Firing_Delay - 1
	if Firing_Delay < 0{
		sprite_index = spr_NewWand
		image_angle = 90
		if particalAction == true{
		
			part_type_color2(obj_Part_MagicOrb.PartMagic, c_blue, c_white);
			part_type_life(obj_Part_MagicOrb.PartMagic, 0.5,room_speed);
			part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x-5, obj_Wand.x+5, obj_Wand.y-13, obj_Wand.y-9, ps_shape_ellipse, ps_distr_gaussian)
		}
	}
	recoil = max(0, recoil - 0.1)
	if ((Left_Key) and (Down_Key) and (Firing_Delay < 0)){
		Firing_Delay = 60;
		image_angle = 235
		o_Player.bang += 3
		o_Player.Vbang -= 1.5
		left = true
		down = true
		right = false
	
	}
	if ((Right_Key) and (Down_Key) and (Firing_Delay < 0)){
		Firing_Delay = 60;
		image_angle = 300
		o_Player.bang += -3
		o_Player.Vbang -= 1.5
		left = false
		down = true
		right = true
	
	}
	if ((Down_Key) and (Firing_Delay < 0)){
	
		Firing_Delay = 60;
		o_Player.Vbang -= 3
		image_angle = -90
		left = false
		down = true
		right = false
	}

	if ((Right_Key) and (Firing_Delay < 0)){
		Firing_Delay = 60;
		image_angle = 0
		o_Player.bang -= 4
		left = false
		down = false
		right = true
	}
	if ((Left_Key) and (Firing_Delay < 0)){
		Firing_Delay = 60;
		image_angle = 180
		o_Player.bang += 4
		left = true
		down = false
		right = false
	}
	if (Left_Key) or (Down_Key) or (Right_Key){
		if (Firing_Delay = 60){

			sprite_index = spr_NewWand1
			if global.MusicPlay == true{
				audio_play_sound(snd_WandSound, 4, false)
			}
			with (instance_create_layer(x, y, "Bullets", o_Wand_bullet))
			{
				speed = 4;
				direction = other.image_angle;
				image_angle = direction  ;
			}
		
		}
	}

	//Emiter pratcial effect stuff
	if particalAction == true {
		if (Firing_Delay <= 60) and (Firing_Delay > 0){
			part_type_color2(obj_Part_MagicOrb.PartMagic, c_red, c_white);
			part_type_life(obj_Part_MagicOrb.PartMagic, 0.2,room_speed/3);
			if left = true and down = false and right = false{
				part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x-13, obj_Wand.x-9, obj_Wand.y-5, obj_Wand.y+5, ps_shape_ellipse, ps_distr_gaussian)
			}
			if left = false and down = false and right = true{
				part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x+9, obj_Wand.x+13, obj_Wand.y-5, obj_Wand.y+5, ps_shape_ellipse, ps_distr_gaussian)
			}	
			if left = false and down = true and right = false{
				part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x-5, obj_Wand.x+5, obj_Wand.y+9, obj_Wand.y+13, ps_shape_ellipse, ps_distr_gaussian)
			}
			if left = true and down = true and right = false{
				part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x-9, obj_Wand.x-5, obj_Wand.y+7, obj_Wand.y+11, ps_shape_ellipse, ps_distr_gaussian)
			}
			if left = false and down = true and right = true{
				part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x+5, obj_Wand.x+9, obj_Wand.y+7, obj_Wand.y+11, ps_shape_ellipse, ps_distr_gaussian)
			}	
		}
	}

	recoil = 4;


	if (image_angle > 90) and (image_angle < 270)
	{
		image_yscale = -1;
	}
	else
	{
		image_yscale = 1;
	}

	//animation
}