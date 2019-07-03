/// @description State Functions
if(CurrentState == ComboOneSTATE.DRAG) {
	image_index = 0;
	if(alarm[0] <= 0){ alarm[0] = 180}	
	if(self.x <= (obj_Player.x+378)) {
		move_towards_point( 99999, self.y, 4 );	
	} else {
		show_debug_message("Cunt move");
		show_debug_message("X Value : "+string(self.x) + " Vs Player Value : " + string(obj_Player.x));
		CurrentState = ComboOneSTATE.STAB;	
	}
}
if(CurrentState == ComboOneSTATE.STAB) {
	if(alarm[1] <= 0){alarm[1] = 30}
	image_index = 1;
	speed = 0;	
}
if(CurrentState == ComboOneSTATE.STOMP) {
	if(alarm[2] <= 0){alarm[2] = 30}
	image_index = 2;
	speed = 0;	
}
if(CurrentState == ComboOneSTATE.RECOVER) {
	//Put veriable for alarm[3] in the alarm[0], So that alarm[3] kinda depends on how soon alarm[0] is called.
	//OR just make it so the draw back takes how ever long THEN start the alarm so that it's constant no matter how far the claw drags.
	if(alarm[3] <= 0){alarm[3] = 180}
	image_index = 2;
	if(self.x >= SpawnX) {
		move_towards_point(SpawnX, self.y, 4 );
	} else {
		speed = 0;	
	}
	
}

//Testing
//
//show_debug_message("Current State : "+string(CurrentState));