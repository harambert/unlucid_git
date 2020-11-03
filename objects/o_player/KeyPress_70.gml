if instance_exists(p_enemy) {
	with(p_enemy) {
		event_perform(ev_other, ev_user0);
	}
}

glitch_aura = true;
o_bkt_glitch.glitch_int = 0.5;

shockwave_create_depth(x,y,-2,0,40,400,7,24,60);