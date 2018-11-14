/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_TextBox);
Yincrease += 0.5
alphaVal -= 0.008
draw_text_transformed_color(self.x, self.y-64-Yincrease, "collected pickle "+string(global.pickles)+ " outta 2", 0.75,0.75,0, c_white, c_white, c_white, c_white, alphaVal)
