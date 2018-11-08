/// @description Insert description here
// You can write your code in this editor
with (instance_create_layer(x, y, "MovingPlatfroms", obj_ElectricEelDying)) {
	direction = other.image_angle;
	image_angle = direction ;
}
instance_destroy();