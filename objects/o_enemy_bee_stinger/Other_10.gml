/// @description fire stinger
var xx = lengthdir_x(10,image_angle);
var yy = lengthdir_y(10,image_angle);

instance_create_layer(x+xx,y+yy,"Instances",o_muzzle_bee);
with(instance_create_layer(x+xx,y+yy,"Instances",o_enemy_bee_bullet)) {
	speed = 2.2;
	direction = other.image_angle;
}