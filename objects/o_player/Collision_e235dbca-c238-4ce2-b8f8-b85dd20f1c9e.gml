if !obstacle_touch {
	obstacle_touch = true;
	invi = true;			//]
	flash = true;			//] These 4 are for the player invi / flashing codes
	alarm[0] = 5;			//]
	alarm[1] = invi_length;	//]
	var dmg = round(hp_max*0.15 + random_range(hp_max*0.15 * -dmg_wiggle, hp_max*0.15 * dmg_wiggle));
	player_hp = max(0, player_hp- dmg);
	with(instance_create_layer(x,y-16,"Text",o_dmg_txt)) {
		dmg_txt = dmg;
		color = c_yellow;
		outline = c_black;
	}
	alarm[2] = 20; //reset posn
	last_x = other.last_x;
	last_y = other.last_y;
	state = state_obstacle;
	
	scr_screen_shake(3,20);
	instance_create_layer(x,y-16,"Instances",o_player_hit_effect);
	
	//glitch effect
	with(o_bkt_glitch) {
		glitch_int = 1;
	}
}