if(place_meeting(x, y+1, o_Sand)) {
	Bounced = true;
}

if(place_meeting(x,y, obj_Player)) {
	if(ItemType != obj_Wand) {
		instance_create_depth(x,y,"Ground",ItemType);
	} else {
		instance_create_depth(x,y,"Player",ItemType);	
	}
	instance_destroy();
}

if(obj_Player.x > x) {
	x += StartMovement;	
} else {
	x -= StartMovement;
}

if(Bounced == false) {
	y +=  Grav;
} else {
	StartMovement += 0.01;
	y += (obj_Player.y-y)/10;
}
