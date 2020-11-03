///@desc scr_cutscene_end_action

scene ++ ;

if (scene > array_length_1d(scene_info) - 1) {
	instance_destroy();
}
