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




//Instance who made it stuff
InstanceThatMadeIt = noone;
InstanceName = "TEST";

instance_create_layer(x+20, y+30, "TextLayer", IconArray[0]);
