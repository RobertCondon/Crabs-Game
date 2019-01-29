/// @description Insert description here
// You can write your code in this editor
currentframe = 0
maxframes=45
DO1 = false
room_second = noone;
SecondRoomLength = 8020;
FirstRoomLength = 8100-SecondRoomLength
persistent = true; // when changing room keep this object alive

// copy the old room so we can display it on the second room


sur_oldroom = surface_create(room_width+FirstRoomLength,room_height);
surface_copy(sur_oldroom,0,0,application_surface)
// We have recorded what the old room looks like so we can instantly go to the next room.
GoneToRoom = false;

room_goto(rm_Level1_Training);