/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_Effect_Puffer_Boom,2,false);
distance_player = distance_to_object(o_Player);
image_index = 10
image_speed = 0
force = 5*((100 - distance_player)/100)
if ( distance_player < 100){
	var dirx, diry;
	//o_Player.bang += lengthdir_x(3.5, image_angle) * -1;
	//o_Player.vsp -= lengthdir_y(2.5, image_angle)
	o_Player.vsp = -1
	o_Player.bang -= 1+ lengthdir_x(force , point_direction(o_Player.x, o_Player.y, x, y)) ;
    o_Player.Vbang -= lengthdir_y(force , point_direction(o_Player.x, o_Player.y, x, y)) ;
	//physics_apply_local_force(x, y, dirx, diry);
	obj_Player.hp -= 1;
	obj_Player.alarmActive = true;
}
instance_destroy()
