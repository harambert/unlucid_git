event_inherited();
depth = 1;
jump_height = 5;
grv = 0.1;
hp = 10;
vsp = 0;
hsp = 0;
movespd = 2;
grounded = false;
damage = 10;
knockback = 1;

alarm[10] = 60; //start attack
next_move = -1;

jump_count = 0;
tongue_count = 0;

dash_aura = false;

system = part_system_create(); // other particles
system2 = part_system_create(); // for dash effect only
particle = part_type_create(); //boom
particle2 = part_type_create(); //explosion
particle3 = part_type_create(); //debris
particle4 = part_type_create(); //dash effect

part_type_sprite(particle, s_boss_frog_smash_boom,true,1,false);
part_type_blend(particle, true);
part_type_life(particle, 20,20);
part_type_alpha1(particle, 0.8);

part_type_sprite(particle2, s_boss_frog_smash_explosion,true,1,false);
part_type_blend(particle2, true);
part_type_life(particle2, 40,40);
part_type_alpha1(particle2, 0.8);

part_type_sprite(particle3, s_boss_frog_smash_debris,false,0,true);
part_type_life(particle3, 120,120);
part_type_direction(particle3,45,135,0,0);
part_type_speed(particle3,2,5,0,0);
part_type_gravity(particle3,0.1,270);
part_type_alpha3(particle3,1,1,1);

part_type_sprite(particle4, sprite_index,false,1,false);
part_type_blend(particle4, true);
part_type_life(particle4, 15,15);
part_type_alpha2(particle4, 0.8, 0);
part_type_color1(particle4, c_aqua);

part_system_depth(system,-2);
part_system_depth(system2,2);