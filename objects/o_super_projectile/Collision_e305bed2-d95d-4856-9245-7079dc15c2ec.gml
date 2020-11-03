if !touched {
	part_type_color1(particle, c_aqua);
	part_type_life(particle, 60,60);
	part_type_alpha3(particle, 1,1,0);
	part_particles_create(system,x,y,particle,1);
	speed = 0;
	touched = true;
	alarm[3] = 15; //activate super
}