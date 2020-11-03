var t = o_txt.t;

if instance_exists(o_player) {
	if o_player.visible = false {
		gotxt = true;
	} else {
		gotxt = false;
	}
}

scr_draw_set_text(c_white,fnt_debug,fa_center,fa_center);
if gotxt {
	draw_text(guiw/2,guih/2,t[0]);
	if keyboard_check_pressed(vk_anykey) {  //return to last saveroom
			died_respawn = true;
			scr_room_transition(last_save);
	}
}
draw_set_valign(fa_top);