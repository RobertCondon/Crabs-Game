/// @description Insert description here
// You can write your code in this editor
IncrementStringAmount = noone;
KillMe = false;
IncrementStringAmountOLD = -40
Restart = false;
oldX = x;
oldY = y;
//After it's done following the characters it should move just a little bit.
NewX = false;

//A little bobble while it waits
Bobble = 0.01
UpDown = false;
alarm[0] = 25

//Boxwidth so it goes down a line when it's reached the end of one.
BoxWidth = noone;

//String count stuff so you can go over the box correct.
TotalSayings = noone
TotalFromString = 0;
PageOld = noone;
Page = 0;
i = 1;

TotalLetters = 0;
SpaceArray[0] = 0;
ArrayCounter = 0;
SetBack = false;

TotalJumps = 0;
AmountOfWords = 32
WidthOfFont = 7;
draw_set_font(fnt_TextBox);
LetterSize = string_width("i")*0.75;