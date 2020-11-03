sprite_index = s_player_jump;
image_speed = 0;
if vsp > 0 {
	image_index = 1;
} else {
	image_index = 0;
}

scr_collision_check();

part_particles_clear(system);