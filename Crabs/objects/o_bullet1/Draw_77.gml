/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,o_Wall)) instance_destroy();
if (place_meeting(x,y,o_Player))
{
	show_message("GAME OVER"); 
	instance_destroy();
	game_restart();
}