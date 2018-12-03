/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
BeenHit = false;
Frames = 0;
Dropped_Item = noone;
Dropped_Sprite = noone;
Dropped = false;


//Partical System
OpenChest_sys = part_system_create()
part_system_depth(OpenChest_sys, 0)

//Partical
OpenChest_Partical = part_type_create();
part_type_sprite(OpenChest_Partical, spr_Chest_OpenPartical, false, true, false);
part_type_scale(OpenChest_Partical, 0.2, 0.2);
part_type_size(OpenChest_Partical, 0.1, 1, -0.0005, 0);
part_type_color1(OpenChest_Partical, c_white);
part_type_alpha2(OpenChest_Partical, 0.9, 0.6);
part_type_speed(OpenChest_Partical, 0.1, 0.3, 0, 0);
part_type_direction(OpenChest_Partical, 340, 359, 0, 0);
part_type_gravity(OpenChest_Partical, 0.005, 90);
part_type_life(OpenChest_Partical, 180,360);
part_type_blend(OpenChest_Partical, true);


//Partical Emitter
OpenChest_Partical_emit = part_emitter_create(OpenChest_sys);
//48 53
part_emitter_region(OpenChest_sys, OpenChest_Partical_emit, self.x+40, self.x+60, self.y+40, self.y+60, spr_Chest_OpenPartical, ps_distr_gaussian)
part_emitter_burst(OpenChest_sys, OpenChest_Partical_emit, OpenChest_Partical, 1);

