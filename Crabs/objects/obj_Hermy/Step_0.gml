/// @description Textbox and Pause

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
	sprite_index = spr_Hermy_Talk_Neutral
	if TextBox == noone{
		TextBox = instance_create_layer(self.x - 150, self.y-150, "Textlayer", obj_Textbox)
		TextBox.InstanceThatMadeIt = self
		TextBox.InstanceName = MyName
		TextBox.Text = script
		
	}
	if Done == false{
		obj_Player.Talking = true
		global.stop = true
		obj_Camera.follow = self;
		obj_Camera.PlayerVision = false;
		
		if(pass){
			obj_Player.Talking = false
			global.stop = false;
			Done = true;
			obj_Camera.follow = obj_Player;
			obj_Camera.PlayerVision = true;
		}
	
	}
}else{
	sprite_index = spr_Hermy_Idle_1
	if TextBox != noone{
		instance_destroy(TextBox)
		TextBox = noone
	}
	
}