/// @description Insert description here
// You can write your code in this editor
//Partical System
Triggered = false;
Stop = false;
Width = 960;
Height = 540;
ParticalDensity = 0;
ReachedPeak = false;


Transition_sys = part_system_create()
part_system_depth(Transition_sys, 0)

//Partical
Transition_Partical = part_type_create();
part_type_sprite(Transition_Partical, spr_Chest_OpenPartical, false, true, false);
part_type_scale(Transition_Partical, 1, 1);
part_type_size(Transition_Partical, 0.5, 2.5, -0.0005, 0);
part_type_color1(Transition_Partical, c_white);
part_type_alpha2(Transition_Partical, 0.9, 0.6);
part_type_speed(Transition_Partical, 0.3, 0.3, 0, 0);
part_type_direction(Transition_Partical, 90, 90, 0, 0);
part_type_gravity(Transition_Partical, 0.01, 90);
part_type_life(Transition_Partical, 1000,2000);
part_type_blend(Transition_Partical, false);


//Partical Emitter
Transition_Partical_emit = part_emitter_create(Transition_sys);
//48 53
part_emitter_region(Transition_sys, Transition_Partical_emit, self.x+40, self.x+60, self.y+40, self.y+60, spr_Chest_OpenPartical, ps_distr_gaussian)
part_emitter_burst(Transition_sys, Transition_Partical_emit, Transition_Partical, 1);

