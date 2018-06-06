/// Angle turret
// You can write your code in this editor
image_angle = point_direction(x, y, o_Player.x, o_Player.y);

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
	
	with (instance_create_layer(x,y,"Bullets", o_bullet))
	{
		speed = 4;
		direction = other.image_angle;
		image_angle = direction
	}
}