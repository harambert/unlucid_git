face = 1;

var w = o_weapon;
sprite_index = w.gun[6,w.current_gun];

if instance_exists(o_player) {
	depth = o_player.depth-1;
}