if !stopped {
	vsp += grv;
	scr_collision_check();

	if place_meeting(x,y+1,o_wall) grounded = true else grounded = false;

	if !grounded {
		hsp = movespd * image_xscale;
	}
	else {
		hsp = 0;
	}

	if sprite_index == s_enemy_frog_jump and grounded {
		sprite_index = s_enemy_frog_idle;
		image_index = 0;
		wait_cycle = choose(1,2);
	}

	if sprite_index == s_enemy_frog_idle
	{
		if instance_exists(o_player) {
			var p = o_player;
			if p.x > x image_xscale = 1;
			if p.x < x image_xscale = -1;
		}
	}
}
//Death Events
if hp <= 0
{
	image_speed = 1;
	instance_change(o_explode_small, true);
	scr_drop_data(5);
}