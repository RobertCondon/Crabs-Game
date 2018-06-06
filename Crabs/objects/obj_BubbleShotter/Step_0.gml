/// @description Insert description here
// You can write your code in this editor

distance_player = distance_to_object(o_Player);
timer = timer - 1
if (distance_player <= los)
{
	active = true;
}
else
{
	active = false;
}

wait_time = wait_time - 1;
if (active == true) and (wait_time < 0)
{
	wait_time = 90
	
	with (instance_create_layer(x,y,"Bullets", obj_Bubble))
	{
		speed = 1;
		direction = other.image_angle + 90;
		image_angle = direction
	}
}