/// @description emit spark

with(o_game) {
	part_particles_create(system,other.x,other.y,particle_data,1);
}

alarm[0] = random_range(30,60);