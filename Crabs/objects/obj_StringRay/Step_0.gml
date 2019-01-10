/// @description Insert description here
// You can write your code in this editor
/*if(Looked == false) {
	alarm[0] = 25;
	Looked = true;
}*/

image_angle = direction
if(direction > 165 and direction < 345) {
	image_yscale = -1;	
} else {
	image_yscale = 1;	
}

show_debug_message(direction);