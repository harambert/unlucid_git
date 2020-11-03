if !instance_exists(o_camera) exit;

switch(activity) {
	case "idle" :
		trans = 0;
		break;
	case "opening" :
		trans = min(0.5, trans + 0.05);
		break;
	case "closing" :
		trans -= 0.05;
		if trans < 0 {
			activity = "idle";
		}
		break;
}

var c = o_camera;
var w = 455;
var h = 256;

depth = 10;

draw_set_alpha(trans);

draw_rectangle_color(c.x - w/2, c.y - h/2, c.x + w/2, c.y,c_black,c_black,c_black,c_black,false);
draw_rectangle_color(c.x - w/2, c.y + 1, c.x + w/2, c.y + h/2,c_black,c_black,c_black,c_black,false);

draw_set_alpha(1);