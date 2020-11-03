// Calculate movement

var move = key_right - key_left;

hsp = move * walksp

vsp = min(6,vsp + grv);

scr_collision_check()

//Animations
image_speed = 1;
var w = o_weapon;

if hsp > 0 face = 1;
if hsp < 0 face = -1;

image_xscale = face;

if grounded {
	can_attack_air = true;
	if hsp != 0
	{
		if shooting = 0
		{
			sprite_index = s_player_run;
		}
		else
		{
			sprite_index = w.gun[5,w.current_gun];
		}
	}
	else {
		if shooting = 0 {
			sprite_index = s_player_idle;
		} else {
			sprite_index = w.gun[3,w.current_gun];
			image_index = shoot_image;
		}
	}
}
else {
	if shooting = 0 {
		sprite_index = s_player_jump;
	} else {
		sprite_index = w.gun[4,w.current_gun];
	}
	if vsp < 0 {
		image_index = 0;
	}
	else
	{
		image_index = 1;
	}
}


//Jumping

if grounded {
	if key_jump {
		vsp = -jump_height;
		//thrust
		if !place_meeting(x, y - 10, o_wall) {
			instance_create_layer(x,y,"Instances", o_jump_thrust);
		}
	}
}

if !grounded and key_release_jump and vsp < -3 
{
	vsp = -3;
}
if !grounded and key_release_jump and vsp > -3 and vsp < -1 
{
	vsp = -1;
}

//Attacking

if key_atk {
	if grounded {
		state = state_atk;
		image_index = 0;
		instance_create_layer(x,y,"Instances",o_melee_damage);
		vsp = 0;
	}
	else {
		if can_attack_air {
			can_attack_air = false;
			state = state_atk_air;
			image_index = 0;
			vsp = -2;
			instance_create_layer(x,y,"Instances",o_melee_damage);
		}
	}
}

//Shooting
var cooldown = w.gun[2,w.current_gun];
current_gun_cooldown = max(0, current_gun_cooldown -1);

shooting = max(0, shooting -1);

var bullet = w.gun[1,w.current_gun];

if instance_exists(o_muzzle_shot) {
	shoot_image = 1;
} else {
	shoot_image = 0;
}

if key_shoot {
	shooting = 30;
	if current_gun_cooldown == 0 {
		with(instance_create_layer(x + image_xscale*17, y-random_range(14,17),"Instances",bullet)) {
			face = other.face
		}
		instance_create_layer(x + image_xscale*17, y-random_range(14,17),"Instances",o_muzzle_shot)
		current_gun_cooldown = cooldown;
	}
}

//Dashing
if key_dash {
	vsp = 0;
	hsp = dash_spd * image_xscale;
	state = state_dash;
	dash_aura = true;
	alarm[3] = 5; //dash effect
	//thrust effect
	if image_xscale = 1 {
		part_type_orientation(particle_thrust,270,270,0,0,0);
	} else {
		part_type_orientation(particle_thrust,90,90,0,0,0);
	} 
	part_particles_create(system,x-image_xscale*5,y-6,particle_thrust,1);
}