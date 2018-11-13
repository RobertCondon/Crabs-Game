/// @Just the create event
// You can write your code in this editor

SpurtMagic = true;

//Partical System
partMagic_sys = part_system_create()
part_system_depth(partMagic_sys, 0)

//Partical
PartMagic = part_type_create();
part_type_shape(PartMagic, pt_shape_disk);
part_type_scale(PartMagic, 0.1, 0.1);
part_type_size(PartMagic, 0.3, 0.7, -0.005, 0);
part_type_color2(PartMagic, c_blue, c_white);
part_type_alpha2(PartMagic, 1, 0.75);
part_type_speed(PartMagic, 0.1, 0.3, 0, 0);
part_type_direction(PartMagic, 0, 359, 0, 0);
part_type_gravity(PartMagic, 0.002, -90);
part_type_life(PartMagic, 0.2,2);
part_type_blend(PartMagic, true);


//Partical Emitter
PartMagic_emit = part_emitter_create(partMagic_sys);
part_emitter_region(partMagic_sys, PartMagic_emit, self.x-20, self.x+20, self.y-20, self.y+20, ps_shape_ellipse, ps_distr_gaussian)
part_emitter_burst(partMagic_sys, PartMagic_emit, PartMagic, 1);

