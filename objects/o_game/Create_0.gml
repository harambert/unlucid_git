room_goto_next();

died_respawn = true; //this is to mark that player died and should not be created in saveroom.. first set to true for starting game

//dmg_txt
dmg_txt_depth = -3

//game over text
gotxt = false;

globalvar hp_max, player_hp, dmg_wiggle, last_save, next_room_spawn_x, next_room_spawn_y, next_room_xscale,
next_room_up, next_room_down;

hp_max = 200;
player_hp = hp_max;
dmg_wiggle = 0.2;
last_save = r_s0;
next_room_spawn_x = -1;
next_room_spawn_y = -1;
next_room_xscale = -1;
next_room_up = false;
next_room_down = false;

system = part_system_create();
part_system_depth(system,-2);
particle_data = part_type_create();
particle_data_collect = part_type_create();
emitter_data = part_emitter_create(system);

part_type_sprite(particle_data, s_data_sparkle,true,4,true);
part_type_blend(particle_data, true);
part_type_life(particle_data, 30,60);
part_type_alpha3(particle_data, 0.8,0.8,0);
part_type_gravity(particle_data,0.02,90);
part_type_size(particle_data,0.7,1,0,0);

part_type_sprite(particle_data_collect, s_data_sparkle,true,4,true);
part_type_blend(particle_data_collect, true);
part_type_life(particle_data_collect, 30,60);
part_type_alpha3(particle_data_collect, 0.8,0.8,0);
part_type_gravity(particle_data_collect,0.02,90);
part_type_size(particle_data_collect,0.7,1,0,0);
part_type_speed(particle_data_collect,0.5,1,0,0);
part_type_direction(particle_data_collect,20,160,0,0);