if !suit_on {
	exit;
}

key_atk = false;
key_jump = false;
key_release_jump = false;
key_shoot = false;
key_right = false;
key_left = false;
key_dash = false;

if keyboard_check(ord("A")) key_left = true; 
if keyboard_check(ord("D")) key_right = true;
if keyboard_check_pressed(ord("J")) key_atk = true;
if keyboard_check_pressed(ord("K")) key_jump = true; 
if keyboard_check_released(ord("K")) key_release_jump = true;
if keyboard_check(ord("L")) key_shoot = true; 
if keyboard_check_pressed(vk_shift) key_dash = true;

if place_meeting(x,y+1,o_wall) grounded = true else grounded = false;

//glitch effect reduce if alive and increase if dead
if !glitch_aura {
	if (player_hp/hp_max) > 0.1 {
		with(o_bkt_glitch) {
			glitch_int = max(0, glitch_int - 0.05);
		}
	} else if player_hp > 0 {
		with(o_bkt_glitch) {
		glitch_int = max(0.2, glitch_int - 0.05);
		}
	} else { //death events
		with(o_bkt_glitch) {
			glitch_int = min(2, glitch_int + 0.005);
		}
	}
} else {
	with(o_bkt_glitch) {
			glitch_int = max(0.5, glitch_int - 0.05);
		}
}

script_execute(state);