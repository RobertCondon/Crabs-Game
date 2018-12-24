/// @description Insert description here
// You can write your code in this editor
if((xTo - x)/15 >= 1) {
	xToPos = true;
} else {
	xToPos = false;	
}
if((xTo - x)/15 <= -1) {
	xToNeg = true;	
} else {
	xToNeg = false;	
}

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
	if(WidthRoom > HermyWidth)	{
		WidthRoom -= 19.2;	
	}
	if(HeightRoom > HermyHeight)	{
		HeightRoom -= 10.8;	
	}
	var pm = matrix_build_projection_ortho(max(WidthRoom,HermyWidth), max(HeightRoom,HermyHeight), 1, 10000000);
	camera_set_proj_mat(camera, pm);
	
}

xTo = max(xTo, 10);



if(follow == obj_Player) {
	if(x > ToWideForward+2) {
		x -= (x-ToWideForward)/DiviedBy;	
		if(xToNeg){
			x += (xTo - x)/15;	
		}
	} else if(x < ToWideBack+2) {
		x += (ToWideBack-x)/DiviedBy;
		if(xToPos) {
			x += (xTo - x)/15;	
		}
	} else {
		var FutureMovement = x;
		FutureMovement += (xTo - x)/15;
		if(FutureMovement < ToWideForward+2 and FutureMovement > ToWideBack+2) {
			x += (xTo - x)/15
		}
		
	}
} else {
	x += (xTo - x)/15;	
}




if((yTo - y)/15 >= 1) or ((yTo - y)/15 <= -1){
		y += ((yTo) - y)/15;
}

if(follow == obj_Player){
	xTo = follow.x + PlayerOffSet;
	yTo = follow.y + PlayerOffSetY;
}else if(follow == obj_Textbox){
	xTo = follow.x + 150;
	yTo = follow.y + 100;
} else {
	xTo = follow.x;
	yTo = follow.y - 50;
}

var vm = matrix_build_lookat(x , y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm)


if(Alpha <= -0.5) {
	FadeIn = false;	
}
if(Alpha >= 1) {
	FadeOut = false;	
}