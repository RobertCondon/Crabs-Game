BangCharge = obj_Wand.BangCharge;
Firing_Delay = obj_Wand.Firing_Delay;
click = obj_Wand.click;
Vbang = obj_Wand.Vbang;
MaxWandCharge = 4.2
MediumWandCharge = 3.5
MinWandCharge = 2.5
//WandCharge Time
MediumChargeTime = 2.5;
MaxWandChargeTime = 7.5;

ChargeState = obj_Wand.ChargeState;

//The charging side of things
if(click) {
	obj_Wand.Vbang = MinWandCharge
	if(BangCharge  <= MaxWandChargeTime){
		obj_Wand.BangCharge += 0.1;
		show_debug_message(BangCharge);
	}
			
	if(BangCharge  >= MaxWandChargeTime){
		ChargeState = 3
		obj_Wand.sprite_index = spr_WandLarge
		obj_Wand.Vbang = MaxWandCharge
					
	}else if(BangCharge  >= MediumChargeTime and BangCharge  < MaxWandChargeTime){
		obj_Wand.sprite_index = spr_WandMedium
		ChargeState = 2
		obj_Wand.Vbang = MediumWandCharge
	}
}

return ChargeState;