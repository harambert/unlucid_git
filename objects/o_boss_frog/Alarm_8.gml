/// @description Recover after smash

sprite_index = s_boss_frog_idle;

if instance_exists(o_player) and point_distance(x,y,o_player.x,y) > 264 {
	next_move = 0;
} else if tongue_count > 1 {
	next_move = 0;
	tongue_count = 0;
} else if jump_count > 1 {
	next_move = 1;
	jump_count = 0;
} else {
	next_move = choose(0,1);
}

if next_move == 0 {
	alarm[10] = choose(30,60,90);
} else {
	alarm[11] = choose(30,60,90);
}

damage = 10;
knockback = 1;