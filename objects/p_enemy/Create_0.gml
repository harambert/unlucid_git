hsp = 0;
vsp = 0;
grv = 0;
last_hsp = 0;
last_vsp = 0;
last_grv = 0;
last_image_speed = 0;
can_hit = true;
flash = false;

stopped = false;

var i = 0;
repeat(12) {
	last_alarm[i] = -1;
	i ++;
}