/// @description Insert description here
// You can write your code in this editor
//script for space
script_NoWand = noone;
script_NoWand[0] = "Youre gonna need a wand before you head out!"
//Script for claw attack
script_ClawAttack = noone;
script_ClawAttack[0] = "Damn looks like it won't budge";
script_ClawAttack[1] = "Try and use your wand";
//Script for wand
script_SmallWand = noone;
script_SmallWand[0] = "Looks like you're gonna need more power. Hold it down this time!";
//Script for seccuess 
script_Destoryed = noone;
script_Destoryed[0] = "There ya go!"
script_Destoryed[1] = "Now don't worry, i'm sure we can clean that up later";

//Actions
Range = 20;
HasWand = false;
BeenHit = false;

//Partical System
DoorSmash_sys = part_system_create()
part_system_depth(DoorSmash_sys, 0)

//Partical
DoorSmash_Partical = part_type_create();
part_type_sprite(DoorSmash_Partical, spr_HouseDoor_Dust, false, true, false);
part_type_scale(DoorSmash_Partical, 1, 1);
part_type_size(DoorSmash_Partical, 0.1, 1, -0.001, 0);
part_type_color1(DoorSmash_Partical, c_white);
part_type_alpha2(DoorSmash_Partical, 0.9, 0.6);
part_type_speed(DoorSmash_Partical, 1, 4, 0, 0);
part_type_direction(DoorSmash_Partical, -20, 40, 0, 0);
part_type_gravity(DoorSmash_Partical, 0.005, -90);
part_type_life(DoorSmash_Partical, 60,120);
part_type_blend(DoorSmash_Partical, true);


//Partical Emitter
DoorSmash_Partical_emit = part_emitter_create(DoorSmash_sys);
//48 53
part_emitter_region(DoorSmash_sys, DoorSmash_Partical_emit, self.x+40, self.x+60, self.y+40, self.y+60, spr_Chest_OpenPartical, ps_distr_gaussian)
part_emitter_burst(DoorSmash_sys, DoorSmash_Partical_emit, DoorSmash_Partical, 1);
