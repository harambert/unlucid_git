image_angle = random_range(0,359);
speed = 0;
image_index = 0;

if instance_exists(o_player) {
	depth = o_player.depth-1;
}