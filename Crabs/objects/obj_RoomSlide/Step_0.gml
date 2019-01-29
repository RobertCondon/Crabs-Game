/// @description Insert description here
// You can write your code in this editor
obj_Player.StopMovement = true;
if(GoneToRoom == false) {
	//room_goto(room_second);
	GoneToRoom = true;
}
currentframe++

if (currentframe > maxframes) {
    instance_destroy() // The transition has finished so destroy it
}


// We are now on the second room so record that room. 
if (currentframe == 2) { 
    sur_newroom = surface_create(room_width-SecondRoomLength,room_height);
    surface_copy(sur_newroom,0,0,application_surface)
}