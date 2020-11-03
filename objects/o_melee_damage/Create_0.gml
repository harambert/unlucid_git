var w = o_weapon;

sprite_index = w.melee[1, w.current_weapon];

if instance_exists(o_player) {
	depth = o_player.depth -1;
	image_xscale = o_player.image_xscale;
}