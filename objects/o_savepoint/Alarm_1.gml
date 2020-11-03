/// @description steam effect

with(instance_create_depth(x + image_xscale* 6, y, -2, o_steam_effect)) {
	image_angle = 0;
}

with(instance_create_depth(x + image_xscale* 4, y - 20, -2, o_steam_effect)) {
	image_angle = 45;
}

with(instance_create_depth(x + image_xscale* 5, y + 15, -2, o_steam_effect)) {
	image_angle = 335;
}