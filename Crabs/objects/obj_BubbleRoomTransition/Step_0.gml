/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_Player) < 10) {
	Triggered = true;	
}

if(Triggered = true) {
	global.stop = true;
	part_emitter_region(Transition_sys, Transition_Partical_emit, obj_Camera.x-Width, obj_Camera.x+Width, obj_Camera.y+Height, obj_Camera.y+Height, spr_Chest_OpenPartical, ps_distr_gaussian)
	part_emitter_burst(Transition_sys, Transition_Partical_emit, Transition_Partical, ParticalDensity);
	if(ParticalDensity < 15 and ReachedPeak = false) {
		ParticalDensity += 0.1;
	} else {
		ReachedPeak = true;	
	}
	if(ReachedPeak == true) {
		if(ParticalDensity >= 14.8) {
			alarm[0] = 120;	
		}
		ParticalDensity -= 0.1;	
	}
}