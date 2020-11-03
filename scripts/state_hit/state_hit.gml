sprite_index = s_player_hit;

dash_aura = false;

if player_hp > 0 {
	vsp += grv/2;
} else {
	vsp += grv/3;
}
scr_collision_check();
hit_timer --;


if hit_timer <0 {
	if player_hp > 0
	{
		hit_timer = 0;
		state = state_normal;
	}
	else
	{
		hit_timer = 0;
		image_index = 0;
		state = state_die;
	}
}