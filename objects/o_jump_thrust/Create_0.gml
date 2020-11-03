if instance_exists(o_player) {
	var p = o_player;
	depth = o_player.depth + 1;
	speed = 0.5;
	if p.hsp == 0 {
		direction = 90;
	}
	if p.hsp > 0 {
		direction = 70;
		image_angle = 340;
	}
	if p.hsp < 0 {
		direction = 110;
		image_angle = 20;
	}
}