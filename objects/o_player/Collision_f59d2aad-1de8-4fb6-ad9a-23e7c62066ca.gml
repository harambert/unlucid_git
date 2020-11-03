if !invi {
	invi = true;			//]
	flash = true;			//] These 4 are for the player invi / flashing codes
	alarm[0] = 5;			//]
	alarm[1] = invi_length;	//]
	var dmg = round(other.damage + random_range(-dmg_wiggle * other.damage, dmg_wiggle * other.damage));
	player_hp = max(0, player_hp - dmg);
	with(instance_create_layer(x,y-16,"Text",o_dmg_txt)) {
		dmg_txt = dmg;
		color = c_yellow;
		outline = c_black;
	}
	hit_timer = 30;
	state = state_hit;
	current_knockback = other.knockback
	if x < other.x {
		hsp = -current_knockback;
		face = 1;
	} else {
		hsp = current_knockback;
		face = -1;
	}
	image_xscale = face;
	vsp = -2;
	
	with(other) {
		if hit_object != -1 {
			instance_change(hit_object,true);
		}
	}

	
	scr_screen_shake(3,20);
	instance_create_layer(x,y-16,"Instances",o_player_hit_effect);
	
	//glitch effect
	with(o_bkt_glitch) {
		glitch_int = 0.5;
	}
}