face = 1;
grv = 0.25;
walkspd = 2;
vsp = 0;
hsp = image_xscale * walkspd;
alarm[0] = 30; //change to player

if instance_exists(o_camera) {
	o_camera.follow = id;
	o_camera.x = x;
	o_camera.y = y;
}