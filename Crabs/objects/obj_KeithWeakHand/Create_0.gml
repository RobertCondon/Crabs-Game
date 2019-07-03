/*
When within range start charge
Charge lasts like 2 seconds
Then begin reach attack
Once reach attack hits ground
Stomp attack.
*/
image_speed = 0;
enum ComboOneSTATE
{
	DRAG,
	STAB,
	STOMP,
	RECOVER
}
CurrentState = ComboOneSTATE.DRAG
SpawnX = x;