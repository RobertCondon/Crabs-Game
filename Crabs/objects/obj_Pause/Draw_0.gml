/// @description Insert description here
// You can write your code in this editor
if(obj_Player.Talking == false){
	if(global.stop == true){
		shader_set(shd_Brightness)
	}else{
		shader_reset()
	}
}