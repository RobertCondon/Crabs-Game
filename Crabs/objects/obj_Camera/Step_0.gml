/// @description Insert description here
// You can write your code in this editor
xTo = max(xTo, 10);
if( x - 494 <= 0){
	if(xTo > x){
		x += (xTo - x)/15;
	}
}else{
	x += (xTo - x)/15;
}

y += (yTo - y)/15;

if(follow != noone){
	xTo = follow.x + 250;
	yTo = follow.y;
}

var vm = matrix_build_lookat(x , y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);