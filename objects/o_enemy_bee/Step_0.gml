if !stopped {
	
	if !shooting {
		hsp = movespd * image_xscale;
	} else {
		hsp = 0;
	}

	x += hsp;

	with(stinger) {
		var ta;  //target angle
		x = other.x-12*other.image_xscale;
		y = other.y+7;
		if instance_exists(o_player)	{
			var p = o_player;
			if point_direction(x,y,p.x,p.y) > 180 and point_direction(x,y,p.x,p.y) < 359 and other.shooting { 
				ta = point_direction(x,y,p.x,p.y);
			} else {
				if other.image_xscale = 1 {
					ta = 315;
				} else {
					ta = 225;
				}
			}
		} else {
			if other.image_xscale = 1 {
				ta = 315;
			} else {
				ta = 225;
			}
		}
		
		if image_angle < ta-3 {
			image_angle += 3;
		} else if image_angle > ta + 3 {
			image_angle -= 3;
		}
	}
}

//Death Events
if hp <= 0
{
	image_speed = 1;
	instance_destroy(stinger);
	instance_change(o_explode_small, true);
	scr_drop_data(4);
}