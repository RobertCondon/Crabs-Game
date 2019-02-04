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
	Shot = false
	if (Firing_Delay < 0){
		ChargeState = scr_WandStates();
		
		if(clicked) {
			Shot = true;
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
			PerfectShot = false;
			//There we go
			with(obj_Player) {
				if(!collisionJump) {
					if(vsp >= 0) {
						if(obj_Player.PerfectPoint) {
							other.Vbang = other.Vbang;
						} else if(other.Vbang - ((vsp-1)/3) < 1) {
							other.Vbang = 1;	
						} else {
							other.Vbang = other.Vbang - (vsp/3)-0.75;	
						}
					} else {
						if(obj_Player.PerfectPoint) {
							other.Vbang = other.Vbang;
							other.PerfectShot = true
						} else if(other.Vbang + ((vsp+1)/3) < 1) {
							other.Vbang = 1;	
						} else {
							//show_message(other.Vbang);
							other.Vbang = other.Vbang + (vsp/3) - 0.75;	
							//show_message(other.Vbang);
						}
					}
				} else {
					other.Vbang = other.Vbang/10
				}
				
				/*show_debug_message("-------------------");
				show_debug_message("vsp = "+ string(vsp));
				show_debug_message("Vbang = " + string(other.Vbang));
				show_debug_message("-------------------");*/
				Vbang -= lengthdir_y(other.Vbang, other.image_angle);
				bang -= lengthdir_x((other.Vbang*1.1), other.image_angle);
				obj_Camera.XRecoil = (bang*17);
				obj_Camera.YRecoil = (Vbang*17);
				obj_Camera.alarm[2] = 60;
				obj_Camera.ShuntBack = true;
				vsp -= 1	
			}
			if(PerfectShot == true) {
				with(obj_Player) {
					WandShake = 1;
					WandGravity = 0;
					colour = c_white;
					part_type_life(WandShotPartical, 60,180);
					part_type_size(WandShotPartical, 0.6, 1, -0.0005, 0);
					part_type_color1(WandShotPartical, colour);
					part_type_direction(WandShotPartical, -60,-90, 0, 10);
					part_emitter_region(WandShotsys, WandShotPartical_emit, self.x+10, self.x+28, self.y+20, self.y+24, spr_Chest_OpenPartical, ps_distr_gaussian)
					part_emitter_burst(WandShotsys, WandShotPartical_emit, WandShotPartical, 10);	
					part_type_direction(WandShotPartical, -120,-90, 0, 10);
					part_emitter_region(WandShotsys, WandShotPartical_emit, self.x-10, self.x-24, self.y+20, self.y+24, spr_Chest_OpenPartical, ps_distr_gaussian)
					part_emitter_burst(WandShotsys, WandShotPartical_emit, WandShotPartical, 10);
				}
			} else {
				with(obj_Player) {
					WandShake = 0.5;
					WandGravity = 0.8;
					colour = $CC74CC
					part_type_life(WandShotPartical, 40,70);
					part_type_size(WandShotPartical, 0.4, 0.7, -0.0005, 0);
					part_type_color1(WandShotPartical, colour);
					part_type_alpha2(WandShotPartical, 0.6, 0.3);
					part_type_direction(WandShotPartical, -60,-90, 0, 3);
					part_emitter_region(WandShotsys, WandShotPartical_emit, self.x+10, self.x+28, self.y+20, self.y+24, spr_Chest_OpenPartical, ps_distr_gaussian)
					part_emitter_burst(WandShotsys, WandShotPartical_emit, WandShotPartical, 2);	
					part_type_direction(WandShotPartical, -120,-90, 0, 3);
					part_emitter_region(WandShotsys, WandShotPartical_emit, self.x-10, self.x-24, self.y+20, self.y+24, spr_Chest_OpenPartical, ps_distr_gaussian)
					part_emitter_burst(WandShotsys, WandShotPartical_emit, WandShotPartical, 2);
				}
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