if o_game.died_respawn == true {
	player_hp = hp_max;
	with(instance_create_layer(286,223,"Instances",o_player)) {
		suit_on = false;
		sprite_index = s_player_suit;
		image_xscale = -1;
		face = -1;
	}
	alarm[1] = 115; //steam effect

} else {
	sprite_index = s_savepoint;
}