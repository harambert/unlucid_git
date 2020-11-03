///@desc scr_cutscene_wait
///@arg seconds

timer ++;

if (timer >= argument0 * room_speed) {
	timer = 0;
	scene++;
	scr_cutscene_end_action();
}