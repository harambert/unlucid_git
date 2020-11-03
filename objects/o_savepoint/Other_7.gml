if sprite_index == s_savepoint_eject {
	scr_screen_shake(2,10);
	with(instance_create_layer(x+10,y,"Instances",o_elon)) {
		hsp = 2;
		vsp = -2;
	}
	alarm[0] = 1;
}

if sprite_index == s_savepoint_close {
	sprite_index = s_savepoint;
	with(instance_create_depth(x + image_xscale* 6, y, -2, o_steam_effect)) {
		image_angle = 0;
	}

	with(instance_create_depth(x + image_xscale* 4, y - 20, -2, o_steam_effect)) {
		image_angle = 45;
	}

	with(instance_create_depth(x + image_xscale* 5, y + 15, -2, o_steam_effect)) {
		image_angle = 335;
	}
}