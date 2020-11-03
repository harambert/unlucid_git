application_surface_draw_enable(0); //disabling automatic redrawing of the application surface
display_set_gui_size(1366, 768);    //hard-setting GUI size to HD
BktGlitch_init();                   //initialising the shader (getting uniform pointers)!

globalvar guiw, guih;
guiw = display_get_gui_width();
guih = display_get_gui_height();

glitch_int = 0;