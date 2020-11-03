/// @description dash aura

if dash_aura {
	alarm[3] = 5;
	part_type_sprite(particle_dash, sprite_index,false,1,false);
	part_type_scale(particle_dash, image_xscale, 1);
	part_particles_create(system,x,y,particle_dash,1);
}