/// @description Textbox and Pause

distance_player = distance_to_object(obj_Player);
if(ArrayDone == true){
	//Seeing if the total number of texts are done on the
	//ScrpitSay array
	pass = keyboard_check_released(vk_enter);	
}else{
	pass = 0	
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
		TextBox = instance_create_layer(self.x - 75, self.y-110, "TextLayer", obj_Textbox)
		TextBox.InstanceThatMadeIt = self
		TextBox.InstanceName = MyName
		TextBox.page = 0
		TextBox.Text = script
	}
	if Done == false{
		global.stop = true
		obj_Camera.follow = self;
		obj_Camera.PlayerVision = false;
		
		if(pass){
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