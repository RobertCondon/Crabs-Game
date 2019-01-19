/// @description Insert description here
// You can write your code in this editor
DistanceToPlayer = distance_to_object(obj_Player)
if(global.stop = false){
	image_angle += spin

	if UpDown = true{
		y = y + spin 
	}else{
		y = y - spin 
	}
	
	if(FoundPlayer == true) {
		PearlSpeed += ((50 - DistanceToPlayer)/50);
		image_xscale -= 0.01
		image_yscale -= 0.01
		motion_add(point_direction(x,y, obj_Player.x, obj_Player.y), PearlSpeed)
	} else {
		if(DistanceToPlayer < 50) {
			FoundPlayer = true	
		}
	}
	if(place_meeting(x,y,obj_Player)) {
		if(obj_Player.collisionSquarePearl) {
			global.black_pearl += 1;
			if global.MusicPlay == true{
				audio_play_sound(snd_WhitePearl, 4, false);
				part_emitter_region(Pearl_sys, Pearl_Partical_emit, self.x+5, self.x-5, self.y+5, self.y-5, pt_shape_flare, ps_distr_gaussian)
				part_emitter_burst(Pearl_sys, Pearl_Partical_emit, Pearl_Partical, 6);
			}
			with(instance_create_layer(obj_Player.x+irandom_range(-32, 32), obj_Player.y+irandom_range(30, 64), "TextLayer", obj_CoinPointText)) {
				IncreaseAmount = other.IncreaseAmount;
				colour = other.Textcolour
			}
			instance_destroy();
		}
	}
}