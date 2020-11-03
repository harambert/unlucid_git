sprite_index = s_player_super_done
vsp = 0;
if image_xscale == 1 {
	hsp = max(0, hsp - 2);
} else {
	hsp = min(0, hsp + 2);
}
invi = true;

scr_collision_check();