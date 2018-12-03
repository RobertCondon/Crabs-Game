/// @description Insert description here
// You can write your code in this editor
if(BeenHit == true) {
	image_index = 1;
	if(Dropped == false) {
		with(instance_create_layer(x+8, y+10, "Bullets", obj_Chest_DroppedItem)) {
			ItemType = other.Dropped_Item
			sprite_index = other.Dropped_Sprite;
		}
		Dropped = true;
	}
	if(Frames < 10) {
		//right most line crack
		part_emitter_region(OpenChest_sys, OpenChest_Partical_emit, self.x+17, self.x+30, self.y+15, self.y+15, spr_Chest_OpenPartical, ps_distr_gaussian)
		part_emitter_burst(OpenChest_sys, OpenChest_Partical_emit, OpenChest_Partical, 1);
		
		//Front crack area
		part_emitter_region(OpenChest_sys, OpenChest_Partical_emit, self.x+5, self.x+8, self.y+23, self.y+26, spr_Chest_OpenPartical, ps_distr_gaussian)
		part_emitter_burst(OpenChest_sys, OpenChest_Partical_emit, OpenChest_Partical, 1);
		
		//Back crack area
		part_emitter_region(OpenChest_sys, OpenChest_Partical_emit, self.x+21, self.x+25, self.y+22, self.y+25, spr_Chest_OpenPartical, ps_distr_gaussian)
		part_emitter_burst(OpenChest_sys, OpenChest_Partical_emit, OpenChest_Partical, 1);
		
		//Tiny front line crack 
		part_emitter_region(OpenChest_sys, OpenChest_Partical_emit, self.x+0, self.x+1, self.y+14, self.y+14, spr_Chest_OpenPartical, ps_distr_gaussian)
		part_emitter_burst(OpenChest_sys, OpenChest_Partical_emit, OpenChest_Partical, 1);
		Frames += 1;
	} else {
		//So that when you hit it again bubbles come out but just a lil
		BeenHit = false;
		Frames = 9;
	}
}
