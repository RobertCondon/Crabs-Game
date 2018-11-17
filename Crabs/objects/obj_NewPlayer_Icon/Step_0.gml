/// @description Insert description here
// You can write your code in this editor
if(IncrementStringAmount != IncrementStringAmountOLD and Restart != true and x < x+IncrementStringAmount) {
	if(TotalSayings[page][i] != " ") {
		TotalFromString = 0;
	} else {
		TotalFromString += 4.5;
	}
	i += 1;
	if(x+4.5 >= BoxWidth) {
		x = oldX + TotalFromString;
		y += 20;
	}
	x = x + 4.5;
	NewX = false;
} else {
	if(NewX = false) {
		x = x + 2;
		NewX = true;
	}
	if UpDown = true{
		y = y + Bobble 
	}else{
		y = y - Bobble 
	}
		
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