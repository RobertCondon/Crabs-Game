/// @description Insert description here
// You can write your code in this editor
Firing_Delay = 0;
Firing_DelayCounter = 60
recoil = 4;
particalAction = true;
image_angle = 90
image_speed = 1
left = false
down = false
right = false
Vbang = 2;
DownForce = false
WasDown = false
//Wand Blust changes
BangCharge = 2
MaxWandCharge = 4.1
MediumWandCharge = 3.25
MinWandCharge = 2.4
MaxWandChargeBo = false
ChargeState = 0

//WandEffects
WandEffectMaxX = 5
WandEffectMinX = -5
WandEffectMaxY = 13
WandEffectMinY = 9

instance_create_depth(x,y, "Ground", obj_Part_MagicOrb);