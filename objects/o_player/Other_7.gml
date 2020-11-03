if sprite_index == s_player_atk_sword or sprite_index == s_player_atk_sword_air {
	state = state_normal;
}
if sprite_index == s_player_die {
	visible = false;
}

if sprite_index == s_player_suitdown {
	with (instance_create_depth(x + -image_xscale*10, y-16, 1, o_steam_effect)) {
		image_xscale = -other.image_xscale;
		image_angle = 40 * image_xscale;
	}
	with (instance_create_depth(x + -image_xscale*8, y-9, 1, o_steam_effect)) {
		image_xscale = -other.image_xscale;
	}
	image_index = 0;
	sprite_index = s_player_suit;
	with(instance_create_layer(x,y,"Instances",o_elon)) {
		image_xscale = other.image_xscale;
		awake = true;
	}
	o_camera.follow = o_elon;
}

if sprite_index == s_player_suitup {
	suit_on = true;
	with (instance_create_depth(x + -image_xscale*6, y-16, 1, o_steam_effect)) {
		image_xscale = -other.image_xscale;
		image_angle = 40 * image_xscale;
	}
	with (instance_create_depth(x + -image_xscale*4, y-9, 1, o_steam_effect)) {
		image_xscale = -other.image_xscale;
	}
}