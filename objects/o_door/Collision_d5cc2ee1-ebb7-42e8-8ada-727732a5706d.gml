if !touched {
	o_game.died_respawn = false;
	with(other) {
		if other.vert == -1 {
			vsp = 0;
			state = state_horiz_enter
			image_xscale = other.horiz_xscale;
		} else if other.vert == 0 { //up
			vsp = -5;
			state = state_vert_enter;
		}	else { //down
			vsp = 5;
			state = state_vert_enter;
		}
	}
	touched = true;
	next_room_spawn_x = spawn_x;
	next_room_spawn_y = spawn_y;
	next_room_xscale = xscale;
	if vert == 0 {
		next_room_up = true;
	}
	if vert == 1 {
		next_room_down = true;
	}
	scr_room_transition(target_room);
}