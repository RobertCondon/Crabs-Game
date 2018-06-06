/// @description Insert description here
// You can write your code in this editor
//Partical System
partMagic_sys = part_system_create()
part_system_depth(partMagic_sys, 0)

//Partical
PartMagic = part_type_create();
part_type_shape(PartMagic, pt_shape_explosion);
part_type_scale(PartMagic, 0.1, 0.1);
part_type_size(PartMagic, 0.3, 0.7, -0.005, 0);
part_type_color2(PartMagic, c_blue, c_white);
part_type_alpha2(PartMagic, 1, 0.75);
part_type_speed(PartMagic, 0.1, 0.5, 0, 0);
part_type_direction(PartMagic, 0, 359, 0, 0);
part_type_gravity(PartMagic, 0.002, -90);
part_type_life(PartMagic, 0.7,room_speed);
part_type_blend(PartMagic, true);

//Other system
partBang_sys  = part_system_create()
part_system_depth(partBang_sys , 0)

//Partical
PartBang = part_type_create();
part_type_shape(PartBang, pt_shape_explosion);
part_type_scale(PartBang, 0.5, 0.5);
part_type_size(PartBang, 0.2, 0.5, -0.005, 0.5);
part_type_color1(PartBang, c_red)

part_type_life(PartBang, 5,5);

//Makin em
PartMagic_emit = part_emitter_create(partMagic_sys);
PartBang_emit = part_emitter_create(partBang_sys);