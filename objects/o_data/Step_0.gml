vsp += grv;

if place_meeting(x,y+1,o_wall) grounded = true;

if grounded {
	if hsp > 0.2 {
		hsp -= 0.2;
	} else if hsp < -0.2 {
		hsp += 0.2;
	}	else {
		hsp = 0;
	}
}

scr_collision_check();