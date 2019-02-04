/// @description Insert description here
// You can write your code in this editor
switch(menu_index){
case 0:
	room_goto(rm_Level1_Opening);
	break
case 1:
    room_goto(rm_Level1_Training);
	break;
case 2:
	room_goto(rm_Level1_KelpFeild);
	break;
case 3:
	instance_create_depth(416, 160, 0, obj_Options);
	instance_destroy();
	break;
case 4:
	game_end();
	break;
}

