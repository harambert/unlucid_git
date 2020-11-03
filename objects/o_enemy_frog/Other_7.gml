if sprite_index == s_enemy_frog_idle
{
	if wait_cycle > 0 wait_cycle -= 1;
	else 
	{
		image_index = 0;
		sprite_index = s_enemy_frog_jump_prepare
	}
}
else if sprite_index == s_enemy_frog_jump_prepare
{
	vsp = -jump_height;
	sprite_index = s_enemy_frog_jump;
}