/// @description Insert description here
// You can write your code in this editor

MyMate = noone
with(instance_create_layer(x,y,"Ground", obj_Light2)) {
	other.MyMate = id;
	draw_set_color(make_color_rgb(64,186,253));
	image_blend = make_color_rgb(64,186,253);
}
Movement = 0;
MovementLoss = 1;
StartMovement = false;
Up = true;
Oldy = y;
FloatDown = false;
Switch = false;
IdealFall = false;

x_Width = (sprite_get_width(spr_JellyBoi_BlueGreen64)/2 ) * image_xscale +1
y_Height = (sprite_get_height(spr_JellyBoi_BlueGreen64)/2 ) * image_yscale +1