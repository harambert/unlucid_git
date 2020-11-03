image_alpha = 0;

if instance_exists(o_player) {
	image_xscale = o_player.image_xscale;
}

touched = false;

system = part_system_create();
particle = part_type_create();

part_type_sprite(particle, s_player_dash,false,1,false);
part_type_blend(particle, true);
part_type_life(particle, 15,15);
part_type_alpha2(particle, 0.9, 0);
part_type_color1(particle, c_white);
part_type_scale(particle, image_xscale, 1);

part_system_depth(system,-3);

alarm[0] = 1; //create dash effect
alarm[2] = 60; //destroy if !touch