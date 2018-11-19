/// @description Insert description here
// You can write your code in this editor
TestArray[0] = ""
Text = TestArray
IconArray[0] = obj_Hermy_Icon;
page = 0;
IncrementStringAmount = 0;
HalfBoxWidth = sprite_get_width(spr_TextBox)/2
BoxWidth =  sprite_get_width(spr_TextBox)*1.4
BoxHeight = sprite_get_height(spr_TextBox)/3



spriteStartX = self.x+30;
spriteStartY = self.y+33
CurrentX = spriteStartX
CurrentY = spriteStartY

draw_set_font(fnt_TextBox);
LetterSize = string_width("i")*0.75;
TotalLetters = 0;
i = 0;
TotalFromString = 0;
IconBoxWidth = BoxWidth-140+x

spriteYshift = 0;
spriteXshift = 0;
LetterLength = 0;
TotalSeps = 0;
//Instance who made it stuff
InstanceThatMadeIt = noone;
InstanceName = "TEST";

/*instance_create_layer(x+35, y+30, "Icons", IconArray[0]);
IconArray[0].BoxWidth = BoxWidth-140+x;
IconArray[0].TotalSayings = Text; */