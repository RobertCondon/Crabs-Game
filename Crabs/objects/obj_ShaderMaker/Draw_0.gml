if(obj_Player.Talking == true) {   
	obj_shaderOnEnd.ShaderUsed = shd_BlackWhite
	obj_shaderOnStart.ShaderUsed = shd_BlackWhite
	obj_shaderOnStart.layer = layer_get_id("ShaderBeforeStart");
	obj_shaderOffStart.layer = layer_get_id("ShaderBeforeEnd");
	obj_shaderOnEnd.layer = layer_get_id("ShaderAfterStart");
	obj_shaderOffEnd.layer = layer_get_id("InvisableStuff");
	obj_shaderOnEnd.Ye = true;
	obj_shaderOnStart.Ye = true;
	
} else if(obj_Player.Talking == false){
	if(global.stop == true){
		obj_shaderOnEnd.ShaderUsed = shd_Brightness
		obj_shaderOnStart.ShaderUsed = shd_Brightness
		obj_shaderOnStart.layer = layer_get_id("ShaderBeforeStart");
		obj_shaderOffStart.layer = layer_get_id("ShaderBeforeEnd");
		obj_shaderOnEnd.layer = layer_get_id("Alies");
		obj_shaderOffEnd.layer = layer_get_id("InvisableStuff");
		obj_shaderOnEnd.Ye = true;
		obj_shaderOnStart.Ye = true;
		
	} else {
		obj_shaderOnEnd.Ye = false;
		obj_shaderOnStart.Ye = false;
		shader_reset();
	}
} else {
	obj_shaderOnEnd.Ye = false;
	obj_shaderOnStart.Ye = false;
	shader_reset();
}


