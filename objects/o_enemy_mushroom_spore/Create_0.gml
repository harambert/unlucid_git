hit_object = -1
knockback = 1;
damage = 15;

life = 90;

system = part_system_create();
particle = part_type_create();

part_type_sprite(particle, s_enemy_mushroom_spore,false,0,false);
part_type_blend(particle, true);
part_type_direction(particle,0,180,0,0);
part_type_gravity(particle,0.02,90);
part_type_speed(particle,1,1.5,-0.05,0);
part_type_alpha2(particle,choose(0.8,0.9,1),0);
part_type_orientation(particle,0,359,0,0,0);
part_type_color2(particle, c_white, c_blue);
part_type_life(particle, 60,90);
part_type_size(particle,0.3,1,-0.005,0);

part_system_depth(system,-1);

emitter = part_emitter_create(system);

part_emitter_region(system,emitter,x-60,x+60,y-60,y+40,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_burst(system,emitter,particle,120);