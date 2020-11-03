if o_game.died_respawn exit;

if next_room_up {
	with(instance_create_layer(next_room_spawn_x, next_room_spawn_y, "Instances", o_player_enter_vert)) {
		image_xscale = next_room_xscale;
		face = next_room_xscale;
	}
	next_room_up = false;
} else if next_room_down {
	with(instance_create_layer(next_room_spawn_x, next_room_spawn_y, "Instances", o_player)) {
		image_xscale = next_room_xscale;
		face = next_room_xscale;
	}
	next_room_down = false;
} else {
	with(instance_create_layer(next_room_spawn_x, next_room_spawn_y, "Instances", o_player_enter_horiz)) {
		image_xscale = next_room_xscale;
		face = next_room_xscale;
	}
}