/// @description Insert description here
// You can write your code in this editor
if (currentframe > 1) {

    // convert the number of frames that have passed into a number between 0 and the room width
    var slideamount = EaseOutQuad(currentframe,0,room_width-SecondRoomLength,maxframes)
	gpu_set_blendenable(false);
    if (surface_exists(sur_oldroom)) {
        draw_surface(sur_oldroom,-slideamount,0)
    }
	gpu_set_blendenable(true);
	if (surface_exists(sur_newroom)) {
		draw_surface(sur_newroom,room_width-slideamount-SecondRoomLength,0)
	}
}


/// I do this to hide the flicker where the next room pops up for 1 frame 
if (currentframe == 1) { 
    if (surface_exists(sur_oldroom)) {
		gpu_set_blendenable(false);
        draw_surface(sur_oldroom,0,0)
		gpu_set_blendenable(true);
    }
}