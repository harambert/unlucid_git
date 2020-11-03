/// @description dash aura

if dash_aura {
	alarm[7] = 5;
	part_type_sprite(particle4, sprite_index,false,1,false);
	part_type_scale(particle4, image_xscale, 1);
	part_particles_create(system2,x,y,particle4,1);
}