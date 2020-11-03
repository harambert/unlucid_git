//follow player except for when player is hit

if instance_exists(o_player) {
	if o_player.state != state_hit {
		x = o_player.x;
		y = o_player.y;
	}
}