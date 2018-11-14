/// @description Insert description here
// You can write your code in this editor
MoveBy = 1
x_Width = (sprite_get_width(Spr_Eel_Moving)/2 ) * image_xscale +1
y_Height = (sprite_get_height(Spr_Eel_Moving)/2 ) * image_yscale +1
collisionSquare = collision_rectangle(x + x_Width, y + y_Height, x - x_Width -1, y - y_Height - 1, obj_Player, false, false)
//Tells the alarm to go off once
Shocking = false;
Act_Shocking = false;