/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_TextBox, 1, self.x,self.y);


//Setting up the text for the box
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_TextBox);
//Setting up the array
if(IncrementStringAmount <= string_length(Text[page])){
	IncrementStringAmount += 0.5;
} 
StringHeight = string_height(Text[page])
textPart = string_copy(Text[page], 1, IncrementStringAmount)
//Drawing the string
draw_text_ext_transformed(self.x+20, self.y+20, textPart, StringHeight, BoxWidth-65, 0.75,0.75,0)

//Draw Name
draw_set_halign(fa_middle);
draw_text_transformed_color(self.x+ HalfBoxWidth , self.y, InstanceName, 0.95,0.95,0, c_red, c_purple, c_purple, c_red, 1)


