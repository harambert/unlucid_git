cam = view_camera[0];
follow = o_player;
buff = 8

x_to = xstart;
y_to = ystart;

shakelength = 0;
shakemagnitude = 0;
shakeremain = 0;     

vw = camera_get_view_width(cam);
vh = camera_get_view_height(cam);

alarm[0] = 5 // activate stuff

instance_deactivate_object(p_enemy)