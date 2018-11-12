/// @description Insert description here
// You can write your code in this editor
if(IncrementStringAmount != IncrementStringAmountOLD and Restart != true and x < x+IncrementStringAmount) {
	x = x+4.2;
}

if(Restart == true) {
	x = oldX
	y = oldY
}

if(KillMe == true){
	instance_destroy();	
}
if(!instance_exists(obj_Textbox)) {
	instance_destroy();	
}

IncrementStringAmountOLD = IncrementStringAmount;
Restart = false;