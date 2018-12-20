/// @description Insert description here
// You can write your code in this editor
self.x = obj_Player.x - 30
self.y = obj_Player.y - 80;
FadeTime -= 0.005;
if(FadeTime < 0) {
	instance_destroy();	
}