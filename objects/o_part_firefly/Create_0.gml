system = part_system_create();
particle = part_type_create();

part_type_sprite(particle, s_firefly,true,1,false);
part_type_blend(particle, true);

part_type_direction(particle, 80,100,random_range(-0.5,0.5),0);
part_type_speed(particle,0.3,0.5,0,0);
part_type_alpha3(particle,0.1,0.4,0);
part_type_orientation(particle,0,359,0,0,0);

part_type_size(particle,0.3,1,0,0);

part_system_depth(system,-2);

emitter = part_emitter_create(system);
part_emitter_region(system,emitter,0,room_width,0,room_height+20,ps_shape_rectangle,ps_distr_linear);

part_emitter_stream(system,emitter,particle,amount);