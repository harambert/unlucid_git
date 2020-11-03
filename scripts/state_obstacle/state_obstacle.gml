sprite_index = s_player_hit;

if player_hp <= 0 {
	state = state_die;
} 

hsp = 0;
vsp = 0.5;
scr_collision_check();