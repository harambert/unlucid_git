/*if instance_exists(o_player) {
	if place_meeting(x,y,o_player) {
		o_camera.follow = o_player;
		with(o_player) {
			image_index = 0;
			sprite_index = s_player_suitup;
		}
		instance_destroy();
	}
}