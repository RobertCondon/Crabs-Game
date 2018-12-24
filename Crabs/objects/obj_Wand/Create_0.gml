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


MaxWandChargeBo = false
ChargeState = 0
BulletType = noone;
Fired = false;

//WandEffects
WandEffectMaxX = 15
WandEffectMinX = 5
WandEffectMaxY = 13
WandEffectMinY = 9
CurrentMaxX = 0;
CurrentMaxY = 0;
CurrentMinX = 0;
CurrentMinY = 0;
instance_create_layer(x,y, "Ground", obj_Part_MagicOrb);