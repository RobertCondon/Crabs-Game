/// @description Textbox and Pause
if(Unseen == true) {
	object_set_visible(self,false);	
}
distance_player = distance_to_object(obj_Player);
if(ArrayDone == true){
	//Seeing if the total number of texts are done on the
	//ScrpitSay array
	pass = keyboard_check_released(vk_space);	
}else{
	pass = false	
}
if(pass){
	if(global.stop = true){
		global.stop = false
	}
}
if (distance_player <= los)
{
	if(TextBox == noone and Done == false){
		TextBox = instance_create_layer(self.x - 150, self.y-150, "Textlayer", obj_Textbox)
		TextBox.InstanceThatMadeIt = self
		TextBox.InstanceName = MyName
		TextBox.Text = script
		TextBox.IconArray[0] = spr_GarryIcon;
		
	}
	if Done == false{
		Draw_Fade = true;
		obj_Player.Talking = true
		global.stop = true
		obj_Camera.follow = self;
		if(DisableVision == false) {
			obj_Camera.PlayerVision = false;
		}
		
		
		if(pass){
			obj_Player.Talking = false
			global.stop = false;
			Done = true;
			Draw_Fade = false;
			obj_Camera.follow = obj_Player;
			obj_Camera.PlayerVision = true;
			shader_reset();
		}
	
	}
}else{
	if TextBox != noone{
		instance_destroy(TextBox)
		TextBox = noone
	}
	
}