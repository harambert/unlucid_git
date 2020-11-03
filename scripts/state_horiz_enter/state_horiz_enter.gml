if grounded {
	sprite_index = s_player_run;
	image_speed = 1;
} else {
	sprite_index = s_player_jump;
	image_index = 1;
	image_speed = 1;
}
hsp = image_xscale * walksp;
vsp += grv;
scr_collision_check();