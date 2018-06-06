/// @description Insert description here
// You can write your code in this editor
switch(menu_index){
	case 0:
		room_goto(Tutorial);
		break
	case 1:
		show_message("Work in Progress")
		break;
	case 2:
		room_goto(Credits);
		break;
	case 3:
		instance_create_depth(416, 160, 0, obj_Options);
		instance_destroy();
		break;
	case 4:
		game_end();
		break;
}
