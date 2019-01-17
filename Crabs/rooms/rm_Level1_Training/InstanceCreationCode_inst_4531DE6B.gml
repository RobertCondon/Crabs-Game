Targetx = 3228
Targety = 3933
MyTarget = instance_create_layer(Targetx, Targety, "Enemys", obj_StingRayTargetBox);
SecondValues[0] = 4571;
SecondValues[1] = 4382;
ThridValues[0] = 5277
ThridValues[1] = 4162
FourthValues[0] = 8349
FourthValues[1] = 3615

with(MyTarget) {
	SecondValues[0] = other.SecondValues[0]
	SecondValues[1] = other.SecondValues[1]
	ThridValues[0] = other.ThridValues[0]
	ThridValues[1] = other.ThridValues[1]
	FourthValues[0] = other.FourthValues[0]
	FourthValues[1] = other.FourthValues[1]
	MyRay = other;
}