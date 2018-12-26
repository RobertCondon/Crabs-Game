/// @description Insert description here
// You can write your code in this editor
keyRight = keyboard_check_pressed(ord("D"));
keyLeft = keyboard_check_pressed(ord("A"));

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
	} else if(WidthRoom > 970) {
		WidthRoom -= (WidthRoom -965)/15
	} else {
		WidthRoom = 960
	}
	
	if(HeightRoom < 540)	{
		HeightRoom += 10.8;	
	} else if(HeightRoom > 550) {
		HeightRoom -= (HeightRoom -550)/15
	} else {
		HeightRoom = 540
	}
	if(CameFromWide == false) {
		var pm = matrix_build_projection_ortho(min(WidthRoom, 960), min(HeightRoom, 540), 1, 10000000);
	} else {
	var pm = matrix_build_projection_ortho(max(WidthRoom, 960), max(HeightRoom, 540), 1, 10000000);
	}
	camera_set_proj_mat(camera, pm);
}else{
	alarm[0] = 120
	if(WideShot == true) {
		CameFromWide = true
		if(WidthRoom < WideShotWidth-10)	{
			WidthRoom += (WideShotWidth-WidthRoom)/15
		} else if(WidthRoom > WideShotWidth+10) {
			WidthRoom -= (WidthRoom -WideShotWidth)/15
		} else {
			WidthRoom = WideShotWidth
		}
	
		if(HeightRoom < WideShotHeight-10)	{
			HeightRoom += (WideShotHeight-HeightRoom)/15	
		} else if(HeightRoom > WideShotHeight+10) {
			HeightRoom -= (HeightRoom -WideShotHeight)/15
		} else {
			HeightRoom = WideShotHeight
		}
		show_debug_message("Height and width");
		show_debug_message(HeightRoom);
		show_debug_message(WidthRoom);
		var pm = matrix_build_projection_ortho(min(WideShotWidth, WidthRoom), min(WideShotHeight, HeightRoom), 1, 10000000);
		camera_set_proj_mat(camera, pm);
	} else {
		CameFromWide = false
		if(WidthRoom > HermyWidth)	{
			WidthRoom -= 19.2;	
		}
		if(HeightRoom > HermyHeight)	{
			HeightRoom -= 10.8;	
		}
		var pm = matrix_build_projection_ortho(max(WidthRoom,HermyWidth), max(HeightRoom,HermyHeight), 1, 10000000);
		camera_set_proj_mat(camera, pm);
	}
	
	
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

//Changing perspective left or right.

if(keyCount == 2) {
	if(Left == true) {
		PlayerOffSet = -250;
		Left = false;
	} else {
		PlayerOffSet = 250;
		Left = true;
	}
	keyCount = 0;
}
if(Left == false) {
	if(keyLeft) {
		keyCount = 0;	
	}
	if(keyRight) {
		keyCount += 1;	
	}
} else {
	if(keyLeft) {
		keyCount += 1;
	}
	if(keyRight) {
		keyCount = 0;
	}
}