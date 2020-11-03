/// @description reset fall posn

if player_hp <= 0 exit;

with(o_bkt_glitch) {
	glitch_int = 3;
}

x = last_x;
y = last_y;

obstacle_touch = false;
state = state_normal;