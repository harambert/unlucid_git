if sprite_index == s_boss_frog_atk_prepare {
	image_index = 0;
	sprite_index = s_boss_frog_atk;
	with(instance_create_layer(x + image_xscale * 6, y, "Instances", o_boss_frog_tongue)) {
		image_xscale = other.image_xscale;
		depth = -2;
	}
} else if sprite_index == s_boss_frog_atk {
	sprite_index = s_boss_frog_idle;
	image_index = 0;
	if instance_exists(o_player) and point_distance(x,y,o_player.x,y) > 264 {
		next_move = 0;
	} else if tongue_count > 1 {
		next_move = 0;
		tongue_count = 0;
	} else if jump_count > 1 {
		next_move = 1;
		jump_count = 0;
	} else {
		next_move = choose(0,1);
	}

	if next_move == 0 {
		alarm[10] = choose(30,60,90);
	} else {
		alarm[11] = choose(30,60,90);
	}
} else if sprite_index == s_boss_frog_jump_prepare {
	dash_aura = true;
	alarm[7] = 1;
	if instance_exists(o_player) and point_distance(x,y,o_player.x,y) > 264 {
		hsp = image_xscale * 9;
	} else {
		hsp = image_xscale * 5;
	}
	sprite_index = s_boss_frog_jump;
	image_index = 0;
	scr_screen_shake(2,10);
	vsp = -4.7;
}