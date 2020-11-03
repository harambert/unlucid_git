face = 1;

grv = 0.25;
vsp = -4;

image_speed = 0

if instance_exists(o_camera) {
	o_camera.follow = id;
	o_camera.x = x;
	o_camera.y = y;
}