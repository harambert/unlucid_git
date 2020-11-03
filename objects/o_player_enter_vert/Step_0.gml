image_xscale = face;
vsp += grv;
hsp = image_xscale * 3;
y += vsp;
x += hsp;

if vsp >= 0 {
	instance_change(o_player,true);
	o_camera.follow = o_player;
}