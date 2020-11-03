hsp = 0;
vsp = 0;
grv = 0.25;
walksp = 2.2;
jump_height = 6.4;
grounded = false;
face = image_xscale;
current_knockback = 0;
hit_timer = 0;
invi = false;
flash = false;
invi_length = 60;
shoot_image = 0; //this is just for s_player_shoot animation (idle)
current_gun_cooldown = 0
shooting = 0; //for  shoot animation
dash_spd = 8.5;
dash_friction = 0.35;
dash_aura = false;
glitch_aura = false;

last_x = -1;
last_y = -1;//this is for resetting posn upon falling to obstancle
obstacle_touch = false

if instance_exists(o_camera) {
	o_camera.x = x;
	o_camera.y = y;
}

suit_on = true;

depth = -1;

state = state_normal;
can_attack_air = false;

system = part_system_create();
system2 = part_system_create();
particle_dash = part_type_create();
particle_thrust = part_type_create();
particle_charge = part_type_create();

part_type_sprite(particle_dash, sprite_index,false,1,false);
part_type_blend(particle_dash, true);
part_type_life(particle_dash, 15,15);
part_type_alpha2(particle_dash, 0.8, 0);
part_type_color1(particle_dash, c_aqua);

part_type_sprite(particle_thrust, s_thrust,true,1,false);
part_type_blend(particle_thrust, true);
part_type_life(particle_thrust, 15,15);

part_type_sprite(particle_charge, s_charge,true,1,false);
part_type_blend(particle_charge, true);
part_type_life(particle_charge, 45,45);
part_type_alpha3(particle_charge, 0.3,0.5,0);

part_system_depth(system,2);
part_system_depth(system2,-1);