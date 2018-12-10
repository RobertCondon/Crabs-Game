/// @description Insert description here
// You can write your code in this editor

if(obj_Player.Talking == false) {
	if(distance_to_object(obj_Player) < Range and !instance_exists(obj_Wand)) {
		BeenHit = false;
		if(keyboard_check_pressed(vk_space)) {
			with(instance_create_layer(obj_Player.x, obj_Player.y, "Allies", obj_HermyOutside)) {
				script = other.script_NoWand;
			}
		
		}
	} else {
		if(BeenHit == true or (keyboard_check_pressed(vk_space) and distance_to_object(obj_Player) < Range)) {
			with(instance_create_layer(obj_Player.x, obj_Player.y, "Allies", obj_HermyOutside)) {
				script = other.script_ClawAttack;
			}
			BeenHit = false;
		}
		if(place_meeting(x-2,y,obj_Wand_bullet_Small)) {
			with(instance_create_layer(x-50, y, "Allies", obj_HermyOutside)) {
				script = other.script_SmallWand;
				los = 99999999;
			}
		}
		if(place_meeting(x-5,y,obj_Wand_bullet_Large)) {
			with(instance_create_layer(x-50, y, "Allies", obj_HermyOutside)) {
				script = other.script_Destoryed;
				los = 99999999;
			}
			part_emitter_region(DoorSmash_sys, DoorSmash_Partical_emit, self.x+22, self.x+41, self.y, self.y+63, spr_Chest_OpenPartical, ps_distr_gaussian)
			part_emitter_burst(DoorSmash_sys, DoorSmash_Partical_emit, DoorSmash_Partical, 30);

			instance_destroy();
		}
	}
}