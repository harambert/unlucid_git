sprite_index = s_player_dash;
hsp += (-image_xscale * dash_friction);

scr_collision_check();

if hsp > -2 and hsp < 2 {
	state = state_normal;
	dash_aura = false;
}