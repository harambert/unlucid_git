/// @description initiate shooting
if instance_exists(o_player) {
	if o_player.x > x {
		image_xscale = 1;
	} else {
		image_xscale = -1;
	}
}

if place_meeting(x, y, o_wall) {
	alarm[11] = 60;
	exit;
}

shooting = true;
alarm[10] = 60; //actually shoot