/// @description time stop

if !stopped {

	stopped = true;

	var i = 0;

	repeat(12) {
		last_alarm[i] = alarm[i];
		alarm[i] = -1;
		i ++;
	}

	last_hsp = hsp;
	last_vsp = vsp;
	last_grv = grv;
	last_image_speed = image_speed;

	image_speed = 0;
	hsp = 0;
	vsp = 0;
	grv = 0;
}