Targetx = 896
Targety = 768
MyTarget = noone //Instacen create code;
SecondValues[0] = 2013;
SecondValues[1] = 27;
ThridValues[0] = 1325
ThridValues[1] = 703
FourthValues[0] = 2017
FourthValues[1] = 638
MyTarget =instance_create_layer(Targetx, Targety, "Enemys", obj_StingRayTargetBox);

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