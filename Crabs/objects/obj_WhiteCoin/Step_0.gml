/// @description Insert description here
// You can write your code in this editor
DistanceToPlayer = distance_to_object(obj_Player)
if(global.stop = false){
	image_angle += spin

	if UpDown = true{
		y = y + spin 
	}else{
		y = y - spin 
	}
	
	if(FoundPlayer == true) {
		PearlSpeed += ((50 - DistanceToPlayer)/50);
		image_xscale -= 0.01
		image_yscale -= 0.01
		motion_add(point_direction(x,y, obj_Player.x, obj_Player.y), PearlSpeed)
	} else {
		if(DistanceToPlayer < 50) {
			FoundPlayer = true	
		}
	}
}