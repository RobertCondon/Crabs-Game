
draw_set_font(fnt_TextBox);
Yincrease += 0.5
alphaVal -= 0.008
draw_text_transformed_color(self.x, self.y-64-Yincrease, "+"+string(IncreaseAmount), 0.5+(IncreaseAmount/40),0.5+(IncreaseAmount/40),0, colour, colour, colour, colour, alphaVal)
