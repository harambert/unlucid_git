if instance_exists(p_enemy) {
	with(p_enemy) {
		event_perform_object(p_enemy,ev_other, ev_user1);
	}
}

glitch_aura = false;

shockwave_create_depth(x,y,-2,0,40,400,7,24,60);