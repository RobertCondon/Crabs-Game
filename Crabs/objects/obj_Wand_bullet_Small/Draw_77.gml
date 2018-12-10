/// @description Insert description here
// You can write your code in this editor




//Partical Emitter

part_emitter_region(partMagic_sys, PartMagic_emit, self.x-20, self.x+20, self.y-20, self.y+20, pt_shape_explosion, ps_distr_gaussian)
part_emitter_burst(partMagic_sys, PartMagic_emit, PartMagic, 1);
if (place_meeting(x,y,o_Wall)){
	
	part_emitter_region(partBang_sys, PartBang_emit, self.x-20, self.x+20, self.y-20, self.y+20, pt_shape_explosion, ps_distr_gaussian)
	part_particles_create(partBang_sys, self.x, self.y, PartBang_emit, 1);
	instance_destroy();
}