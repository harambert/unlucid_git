//update destination

if instance_exists(follow)
{
	x_to = follow.x;
	y_to = follow.y;
}

//update object position
x += (x_to - x) / 10;
y += (y_to - y) / 10;

x = clamp(x,(camera_get_view_width(cam) *0.5) + buff,room_width-(camera_get_view_width(cam) *0.5));
y = clamp(y,(camera_get_view_height(cam) *0.5) + buff,room_height-(camera_get_view_height(cam) *0.5));

//screen shake
x += random_range(-shakeremain, shakeremain);
y += random_range(-shakeremain, shakeremain);
shakeremain = max(0,shakeremain -((1/shakelength)*shakemagnitude));

//update camera view
camera_set_view_pos(cam, x - (camera_get_view_width(cam) *0.5), y - (camera_get_view_height(cam) *0.5));

//parallax BG
if (layer_exists("Background0"))
{
	layer_x("Background0", x/4);
}
if (layer_exists("Background1"))
{
	layer_x("Background1", x/2);
}
if (layer_exists("Background2"))
{
	layer_x("Background2", x/1.1);
	layer_y("Background2", (y / 1.1) - (vh / 2));
}
if (layer_exists("Background3"))
{
	layer_x("Background3", x - vw/2);
	layer_y("Background3",  y - vh/2);
}
if (layer_exists("Foreground0"))
{
	layer_x("Foreground0", -x*1.2);
}