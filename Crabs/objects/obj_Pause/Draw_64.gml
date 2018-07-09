/// @description Insert description here
// You can write your code in this editor
if(obj_Player.Talking == false){
	if(global.stop == true){
		shader_reset()
		draw_set_font(fnt_Paused)
		draw_set_color(c_white)
		draw_text(window_get_width()/2, window_get_height()/2, "PAUSED")
		shader_set(shd_Brightness)
	}
}