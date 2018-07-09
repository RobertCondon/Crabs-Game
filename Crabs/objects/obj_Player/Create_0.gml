
/// @Intionalizeing veriables
stop = false;
hsp = 0;
vsp = 0;
grv = 1;
walksp = 5;
bang = 0;
Vbang = 0;
stop = 0;
hp = 2;
hsp_move = 0;
visableness = true;
alarmActive = false;
RoomGo = New_Tutorial;
TestSpeed = false;
JumpHight = -5
//Spuished from
SpuishedOffOn = false
//wall bullshit
SquareX = 25 + hsp
collisionSquare = collision_rectangle(x-SquareX+50, y-20, x+SquareX, y+32, o_Wall, false, false)
Xline = 0
Draw_Enter = false
Yline = 0
//Wall slide stamina
stamina_max = 60
stamina_current = 0
//Seeing if you are talking to hermy
Talking = false
//Fire object bullshit
BeenHit = false
//Flash
flash = 0
//Platform moving speed
MoveBy = 2
HittingWall = false

//Create step partical effect

//Partical System
partStep_sys = part_system_create()
part_system_depth(partStep_sys, 0)

//Partical
PartStep = part_type_create();
part_type_shape(PartStep, pt_shape_square);
part_type_scale(PartStep, 0.05, 0.05);
part_type_size(PartStep, 0.1, 0.7, -0.005, 1);
part_type_color2(PartStep, c_yellow, c_white);
part_type_alpha2(PartStep, 1, 0.75);
part_type_speed(PartStep, 0.1, 0.5, 0, 0);
part_type_direction(PartStep, 0, 359, 0, 0);
part_type_gravity(PartStep, 0.01, -90);
part_type_life(PartStep, 0.4,room_speed);



//Partical Emitter
PartStep_emit = part_emitter_create(partStep_sys);
part_emitter_region(partStep_sys, PartStep_emit, self.x-20, self.x+20, self.y-20, self.y+20, ps_shape_ellipse, ps_distr_gaussian)
part_emitter_burst(partStep_sys, PartStep_emit, PartStep, 1);

//Make bottom leg boxes
instance_create_layer(0,0,"Sand",obj_BelowPlayerLeft)
instance_create_layer(0,0, "Sand",obj_BelowPlayerRight)
instance_create_layer(0,0, "Sand",obj_SidePlayerRight)
instance_create_layer(0,0,"Sand",obj_SidePlayerLeft)
SlidingRight = false
SlidingLeft = false
obj_BelowPlayerLeft.visible = false
obj_BelowPlayerRight.visible = false
obj_SidePlayerLeft.visible = false
obj_SidePlayerRight.visible = false