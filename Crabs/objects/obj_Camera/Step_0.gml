/// @description Insert description here
// You can write your code in this editor
if (PlayerVision == true){
	
	if(WidthRoom < 960)	{
		WidthRoom += 19.2;	
	}
	if(HeightRoom < 540)	{
		HeightRoom += 10.8;	
	}
	var pm = matrix_build_projection_ortho(min(WidthRoom, 960), min(HeightRoom, 540), 1, 10000000);
	camera_set_proj_mat(camera, pm);
}else{
	if(WidthRoom > 480)	{
		WidthRoom -= 19.2;	
	}
	if(HeightRoom > 270)	{
		HeightRoom -= 10.8;	
	}
	var pm = matrix_build_projection_ortho(max(WidthRoom,480), max(HeightRoom,270), 1, 10000000);
	camera_set_proj_mat(camera, pm);
	
}

xTo = max(xTo, 10);
if( x - 494 <= 0){
	if(xTo > x){
		x += (xTo - x)/15;
	}
}else{
	x += (xTo - x)/15;
}

y += (yTo - y)/15;

if(follow == obj_Player){
	xTo = follow.x + 250;
	yTo = follow.y;
}else{
	xTo = follow.x
	yTo = follow.y
}

var vm = matrix_build_lookat(x , y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm)