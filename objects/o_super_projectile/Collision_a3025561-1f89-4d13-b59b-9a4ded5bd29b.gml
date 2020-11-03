if !touched {
	part_type_color1(particle, c_red);
	part_type_life(particle, 30,30);
	part_particles_create(system,x,y,particle,1);
	speed = 0;
	touched = true;
	alarm[1] = 30; //destroy
}