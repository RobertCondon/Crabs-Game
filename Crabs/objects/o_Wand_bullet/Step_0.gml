/// @description Insert description here
// You can write your code in this editor
var BulletConnectWall = instance_place(x, y, o_Wall)
var BulletConnectLiving = instance_place(x, y, obj_LivingObject)
var BulletRay = instance_place(x,y, obj_StringRay);
if (BulletConnectWall){
	BulletConnectWall.stun = true;
	part_emitter_region(partBang_sys, PartBang_emit, self.x-20, self.x+20, self.y-20, self.y+20, pt_shape_explosion, ps_distr_gaussian)
	part_particles_create(partBang_sys, self.x, self.y, PartBang_emit, 1);
	instance_destroy();
}
if(BulletConnectLiving) {
	BulletConnectLiving.stun = true;
	part_emitter_region(partBang_sys, PartBang_emit, self.x-20, self.x+20, self.y-20, self.y+20, pt_shape_explosion, ps_distr_gaussian)
	part_particles_create(partBang_sys, self.x, self.y, PartBang_emit, 1);
	instance_destroy();
}
if(BulletRay) {
	BulletRay.stun = true;
	part_emitter_region(partBang_sys, PartBang_emit, self.x-20, self.x+20, self.y-20, self.y+20, pt_shape_explosion, ps_distr_gaussian)
	part_particles_create(partBang_sys, self.x, self.y, PartBang_emit, 1);
	instance_destroy();
}