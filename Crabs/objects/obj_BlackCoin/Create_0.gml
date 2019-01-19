/// @description Insert description here
// You can write your code in this editor
spin = random_range(0.05, 0.12)
UpDown = false
FoundPlayer = false;
size = 0;
PearlSpeed = 0;
DistanceToPlayer = 999;
alarm[0] = 1
colour = $00006B
Textcolour = $648D8F
//Partical System
Pearl_sys = part_system_create()
part_system_depth(Pearl_sys, 0)
IncreaseAmount = 5;

//Partical
Pearl_Partical = part_type_create();
//part_type_sprite(Pearl_Partical, pt_shape_flare, false, true, false);
part_type_scale(Pearl_Partical, 1.5, 1.5);
part_type_size(Pearl_Partical, 1, 2, -0.0005, 0);
part_type_color1(Pearl_Partical, colour);
part_type_alpha2(Pearl_Partical, 0.9, 0.6);
part_type_speed(Pearl_Partical, 0.3, 0.5, 0, 0);
part_type_direction(Pearl_Partical, point_direction(x,y, obj_Player.x, obj_Player.y)-20, point_direction(x,y, obj_Player.x, obj_Player.y) + 20, 0, 1);
//part_type_direction(Pearl_Partical, 340, 359, 0, 0);
part_type_gravity(Pearl_Partical, 0.001, -90);
part_type_life(Pearl_Partical, 60,90);
part_type_blend(Pearl_Partical, true);


//Partical Emitter
Pearl_Partical_emit = part_emitter_create(Pearl_sys);
//48 53
//part_emitter_region(Pearl_sys, Pearl_Partical_emit, self.x+40, self.x+60, self.y+40, self.y+60, spr_Pearl_CoinEffect, ps_distr_gaussian)
//part_emitter_burst(Pearl_sys, Pearl_Partical_emit, Pearl_Partical, 1);

