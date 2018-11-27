/// @description Insert description here
// You can write your code in this editor
if(IncrementStringAmount == 0) {
	i = 0;	
	TotalFromString =  0;
	SetBack = false;
	ArrayCounter = 0;
	TotalLetters = 0;
}
//Goes through the whole string and after 26 words checks if any segments of words are still in wiring.
//if they are they get shunted down. therefore the icon should spawn a little ahead in the x axis.
//This would be the "SpaceArray[ArrayCounter]"
//It's an array beacuse there can be multiple lines.
if (i < string_length(TotalSayings)) {
	TotalLetters += 1;
	x = x + LetterSize;
	//This checks if the letter is a letter and not a space.
	//As a line break on a space makes it start off at the very begining.
	if(string_char_at(TotalSayings, i) != " ") {
		TotalFromString += LetterSize;
		show_debug_message(string_char_at(TotalSayings, i));
	} else {
		show_debug_message(string_char_at(TotalSayings, i));
		TotalFromString = 0;
		
	}
	if(x >= BoxWidth) {
		x = oldX + TotalFromString;
		y += 20;
	}
	i += 1;
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
PageOld = Page;
Restart = false;