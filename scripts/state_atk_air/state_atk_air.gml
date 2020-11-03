var w = o_weapon
sprite_index = w.melee[4, w.current_weapon];

scr_collision_check();
if hsp > 0 {
	hsp = 0.5;
}
if hsp < 0 {
	hsp = -0.5;
}
vsp += 0.2;