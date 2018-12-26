/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_Player) < 100 and DoneBefore == false) {
		self.y = YgoTo;
		self.x = XgoTo;
		with(obj_Camera) {
			follow = other;
			WideShotWidth = other.Width
			WideShotHeight = other.Height
			WideShot = true;
			PlayerVision = false
		}
		alarm[0] = 60;
		DoneBefore = true;
}