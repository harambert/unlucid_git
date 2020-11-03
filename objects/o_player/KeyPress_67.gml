/// @description special attack

if state != state_normal exit;

if instance_exists(p_enemy) {
	with(p_enemy) {
		event_perform(ev_other, ev_user0);
	}
}

with(instance_create_depth(x,y,-3,o_super_projectile)) {
	speed = 8;
	if other.face = 1 direction = 0;
	else direction = 180;
}

state = state_super;

with(o_darken_window) {
	activity = "opening";
}

part_particles_create(system2,x,y-16,particle_charge,1);