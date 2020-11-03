sprite_index = s_player_activate_super;
vsp = 0;
hsp = 20*image_xscale;
invi = true;

if place_meeting(x,y,o_super_projectile) {
	state = state_super_done;
	scr_frame_freeze();
	instance_create_depth(x,y-16,-3,o_super_hit);
	scr_screen_shake(5,20);
}

with(o_super_projectile){
	alarm[4] = 30;
}

scr_collision_check();