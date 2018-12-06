/// @Draw

//Setting up the text for the box
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_CutScene);
//Setting up the array
//How much of the string should be revield. 
if(IncrementStringAmount <= string_length(Text[page])){
	IncrementStringAmount += 0.1;
	Draw_Enter = false
}  else  if(IncrementStringAmount <= string_length(Text[page])+1){
	IncrementStringAmount += 1;
	alarm[0] = Space_Wait;	
	Space_Wait += 120
}
StringHeight = string_height(Text[page])
//This makes it so the string gets printed in out slowly rather then all at once.
textPart = string_copy(Text[page], 1, IncrementStringAmount)
//Drawing the string. I.E "This is 1 line"
draw_text_ext_transformed(self.x+20, self.y+20, textPart, StringHeight, BoxWidth-65, 1,1,0);

//Drawing the icon

if (i < string_length(textPart)) {
	TotalLetters += 1;
	i += 1;
	CurrentX = CurrentX + LetterSize;
	//This checks if the letter is a letter and not a space.
	//As a line break on a space makes it start off at the very begining.
	if(string_char_at(textPart, i) != " ") {
		TotalFromString += LetterSize;
	} else {
		TotalFromString = 0;
		
	}
	if(CurrentX >= IconBoxWidth) {
		CurrentX = spriteStartX + TotalFromString;
		CurrentY += StringHeight*0.75;
	}
	
}



//raw_sprite(spr_Hermy_Icon, 0, CurrentX, CurrentY)
if(Draw_Enter == true) {
	draw_set_font(fnt_TextBox);
	draw_text(self.x+ HalfBoxWidth, CurrentY+40, "Press Space");
	
}

//Draw Name. I.E "Hermy"
//draw_set_halign(fa_middle);
//draw_text_transformed_color(self.x+ HalfBoxWidth , self.y, InstanceName, 0.95,0.95,0, c_red, c_purple, c_purple, c_red, 1)

