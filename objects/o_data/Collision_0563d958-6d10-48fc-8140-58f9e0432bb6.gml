if !collectible exit;

with(o_game) {
	part_emitter_region(system,emitter_data,other.x - 8, other.x +8, other.y +8, other.y - 8, ps_shape_diamond, ps_distr_linear)
	part_emitter_burst(system,emitter_data,particle_data_collect,random_range(6,9));
}

instance_destroy();