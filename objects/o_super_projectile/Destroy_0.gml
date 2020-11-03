part_type_destroy(particle);
part_system_destroy(system);

if instance_exists(p_enemy) {
	if p_enemy.stopped == true {
		with(p_enemy) {
			event_perform(ev_other, ev_user1);
		}
	}
}

if instance_exists(o_player) {
	o_player.state = state_normal;
}

with(o_darken_window) {
	activity = "closing";
}