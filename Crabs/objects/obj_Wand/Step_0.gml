/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if global.stop == false{
	x = o_Player.x - 25;
	y = o_Player.y;
	click = mouse_check_button(mb_left)
	clicked = mouse_check_button_released(mb_left);
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	
	if (Firing_Delay < 0){
		ChargeState = scr_WandStates();
		
		if(clicked) {
			if(ChargeState == 1) {
				BulletType = obj_Wand_bullet_Small
				Firing_Delay = 40;
			} else if(ChargeState == 2) {
				BulletType = obj_Wand_bullet_Med
				Firing_Delay = 120;	
			} else {
				BulletType = obj_Wand_bullet_Large
				obj_Player.hp -= 1
				obj_Player.alarmActive = true
				Firing_Delay = 240;	
			}
			with(obj_Player) {
				Vbang -= lengthdir_y(other.Vbang, other.image_angle);
				bang -= lengthdir_x(other.Vbang*1.1, other.image_angle);
				vsp -= 1	
			}
			with (instance_create_layer(x + CurrentMinX, y +CurrentMinY, "Bullets", BulletType))
			{
				speed = 4;
				direction = other.image_angle;
				image_angle = direction  ;
			}
		}
		
	} else {
		Firing_Delay -= 1;
		sprite_index = spr_WandNormal;
		BangCharge = 0;
		ChargeState = 1;
	}
	part_type_color2(obj_Part_MagicOrb.PartMagic, c_blue, c_white);
	part_type_life(obj_Part_MagicOrb.PartMagic, 0.5,room_speed);
	CurrentMaxY = lengthdir_y(WandEffectMaxY, image_angle);
	CurrentMaxX = lengthdir_x(WandEffectMaxX, image_angle);
	CurrentMinY = lengthdir_y(WandEffectMinY, image_angle);
	CurrentMinX = lengthdir_x(WandEffectMinX, image_angle);
	part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x+CurrentMaxX, obj_Wand.x+CurrentMinX , obj_Wand.y+CurrentMinY, obj_Wand.y+CurrentMaxY, ps_shape_ellipse, ps_distr_gaussian)
	
	
}