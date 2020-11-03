/// @description reset everything after activate
with(p_enemy) {
	event_perform(ev_other, ev_user1);
}
with(o_darken_window) {
	activity = "closing";
}
with(o_player) {
	state = state_normal;
	dash_aura = false;
	invi = false;
}

instance_destroy();