if !stopped {
	vsp += grv;

	if !atk_started {
		current_cool_down = max(0, current_cool_down -1);
		if walking {
			if place_meeting(x + image_xscale*5, y, o_wall) 
			or !place_meeting(x + image_xscale*20,y+1, o_wall) {
				image_xscale *= -1;
			}
			hsp = movespd * image_xscale;
			image_speed = 2;
		} else {
			hsp = 0;
			image_speed = 1;
		}
	}

	if place_meeting(x,y+1,o_wall) grounded = true else grounded = false;

	if instance_exists(o_player) {
		var px = o_player.x;
		var py = o_player.y
		if !atk_started and
		current_cool_down = 0 and
		point_in_circle(px,py,x,y,70) and
		py <= y + 16 {
			atk_started = true;
			image_speed = 1;
			image_index = 0;
			sprite_index = s_enemy_mushroom_atk_prepare;
			hsp = 0;
			if px > x image_xscale = 1;
			else image_xscale = -1;
			current_cool_down = cool_down;
			alarm[10] = 90; //reset to walking
		}
	}
}
scr_collision_check();

//Death Events
if hp <= 0
{
	image_speed = 1;
	instance_change(o_explode_small, true);
	scr_drop_data(6)
}