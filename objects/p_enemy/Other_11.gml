/// @description time_resume

if stopped {

	stopped = false;

	var i = 0;

	repeat(12) {
		alarm[i] = last_alarm[i];
		i ++;
	}

	hsp = last_hsp;
	vsp = last_vsp;
	grv = last_grv;
	image_speed = last_image_speed;
}