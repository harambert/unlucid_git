key_right = false;
key_left = false;

if keyboard_check(ord("A")) key_left = true; 
if keyboard_check(ord("D")) key_right = true;

if place_meeting(x,y+1,o_wall) grounded = true else grounded = false;

if awake {
	var move = key_right - key_left;
	hsp = move * walksp
	if hsp == 0 {
		sprite_index = s_elon_idle;
	} else {
		sprite_index = s_elon_walk;
		if hsp < 0 {
			image_xscale = -1;
		} else if hsp > 0 {
			image_xscale = 1;
		}
	}
} else if !grounded and !awake {
	sprite_index = s_elon_air;
} else if grounded and !awake {
	sprite_index = s_elon_floor;
	hsp = 0;
	if key_right or key_left {
		awake = true;
	}
}

vsp = min(6,vsp + grv);

//SUIT UP EVENTS
if instance_exists(o_player) {
	if point_distance(x,y,o_player.x,o_player.y) < 5 {
		o_camera.follow = o_player;
	with(o_player) {
		image_index = 0;
		sprite_index = s_player_suitup;
	}
	instance_destroy();
	}
}

scr_collision_check()