argument0 = left;
argument1 = right;
argument2 = down;

part_type_color2(obj_Part_MagicOrb.PartMagic, c_red, c_white);
part_type_life(obj_Part_MagicOrb.PartMagic, 0.2,room_speed/3);
if left = true and down = false and right = false{
	part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x-13, obj_Wand.x-9, obj_Wand.y-5, obj_Wand.y+5, ps_shape_ellipse, ps_distr_gaussian)
}
if left = false and down = false and right = true{
	part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x+9, obj_Wand.x+13, obj_Wand.y-5, obj_Wand.y+5, ps_shape_ellipse, ps_distr_gaussian)
}	
if left = false and down = true and right = false{
	part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x-5, obj_Wand.x+5, obj_Wand.y+9, obj_Wand.y+13, ps_shape_ellipse, ps_distr_gaussian)
}
if left = true and down = true and right = false{
	part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x-9, obj_Wand.x-5, obj_Wand.y+7, obj_Wand.y+11, ps_shape_ellipse, ps_distr_gaussian)
}
if left = false and down = true and right = true{
	part_emitter_region(obj_Part_MagicOrb.partMagic_sys, obj_Part_MagicOrb.PartMagic_emit, obj_Wand.x+5, obj_Wand.x+9, obj_Wand.y+7, obj_Wand.y+11, ps_shape_ellipse, ps_distr_gaussian)
}	