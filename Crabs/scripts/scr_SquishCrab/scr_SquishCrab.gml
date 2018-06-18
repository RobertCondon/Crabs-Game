key_down = obj_Player.key_down
key_up = obj_Player.key_up
collisionLine = obj_Player.collisionLine
SpuishedOffOn = obj_Player.SpuishedOffOn


if(key_down){
		SpuishedOffOn = true
		obj_Player.sprite_index = spr_NewPlayer_squish	
		collisionLine = collision_line(x, y+Yline, x, y+Yline+5, obj_Tunnel, false, true)
		if(collisionLine){
			obj_Player.x = path_get_x(pth_TunnelOne, 0)
			path_start(pth_TunnelOne, 2, path_action_stop, false)
			obj_Player.sprite_index = spr_NewPlayer_squishTunnel
		}else{
			obj_Player.sprite_index = spr_NewPlayer_squish	
		}
	}else if(key_up){
		SpuishedOffOn = false	
	}