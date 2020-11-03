var current_scene = (scene_info[scene]);

var len = array_length_1d(current_scene) - 1;

switch(len) {
	case 0: script_execute(current_scene[0]); break;
	case 1: script_execute(current_scene[0], current_scene[1]); break;
	case 2: script_execute(current_scene[0], current_scene[1], current_scene[2]); break;
}
	
x_dest = -1;
y_dest = -1;