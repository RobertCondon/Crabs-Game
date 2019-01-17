Targetx = 4636
Targety = 5601
MyTarget =instance_create_layer(Targetx, Targety, "Enemys", obj_StingRayTargetBox);
SecondValues[0] = 5757;
SecondValues[1] = 5631;
ThridValues[0] = 5181
ThridValues[1] = 4641
FourthValues[0] = 4704
FourthValues[1] = 4929

with(MyTarget) {
	SecondValues[0] = other.SecondValues[0]
	SecondValues[1] = other.SecondValues[1]
	ThridValues[0] = other.ThridValues[0]
	ThridValues[1] = other.ThridValues[1]
	FourthValues[0] = other.FourthValues[0]
	FourthValues[1] = other.FourthValues[1]
	MyRay = other;
}

//1407, 1824

/*Targetx = 4636
Targety = 5601*/