/// @description Insert description here
// You can write your code in this editor
if(global.stop == false) {
	AttackKey = keyboard_check_pressed(ord("E"))
	if(AttackKey) {
		if(state == CLAWSTATE.IDEL) {
			state = CLAWSTATE.BASIC_ATTACK;	
		}
	}
}


switch(state) {
	case CLAWSTATE.IDEL: sprite_index = spr_Claw_Idel; mask_index = spr_Claw_BasicAttack; break;
	case CLAWSTATE.BASIC_ATTACK: scr_ClawState_Basic(AttackKey); break;
	case CLAWSTATE.COMBO_JAB: scr_ClawState_ComboJab(AttackKey); break;
}