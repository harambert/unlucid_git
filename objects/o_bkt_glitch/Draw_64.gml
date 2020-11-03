/*
    DON'T FORGET, BktGlitch_init(); needs to be executed at the start of the game!
    Also, if you're on Windows 10, make sure DirectX 9 is installed.
*/

//Activates the shader

//if (os_device == os_macosx){
//	shader_set(shdBktGlitchMac);
//}else{
shader_set(shdBktGlitch);
//}

//Passes screen resolution to the shader, this is used by some of the effects, and has to be set.
//You can set the resolution to anyhting you want with BktGlitch_set_resolution(w, h)
BktGlitch_set_resolution_of_application_surface();

//Passes global timer to shader, setting this to zero results in everything being static
BktGlitch_set_time(current_time * 0.06); 

/* 
    Remember, all uniforms need to be set for the shader to work,
    so after we've set time and resolution, this is what further
    configuration could look like:
    
        We can choose one of the presets, and tweak only the values we want: 
        
            BktGlitch_set_preset(BktGlitch.presetA); 
            BktGlitch_set_line_resolution(0.420000);
            BktGlitch_set_line_drift(0.249702);
            BktGlitch_set_line_vertical_shift(0.713333);
        
        etc..
    
        We can also use configuration one-liners, such as:
    
            BktGlitch_config_zero(); - this sets all parameters to zero EXCEPT for resolution, you still have to set that manually
            
            or
            
            BktGlitch_config(0.004, 0.01, 1, 0, 0, 0, 5.333, 0.2, 0.15, 0.5, 0.00233, 0.0025, 0.5, 1, 0, current_time * 0.06); - sets all parameters EXCEPT for resolution
*/
BktGlitch_set_intensity(glitch_int);
BktGlitch_set_line_shift(0.001333);
BktGlitch_set_line_speed(0.033333);
BktGlitch_set_line_resolution(1.000000);
BktGlitch_set_line_drift(0.086667);
BktGlitch_set_line_vertical_shift(0.153333);
BktGlitch_set_noise_level(0.500000);
BktGlitch_set_jumbleness(0.020000);
BktGlitch_set_jumble_speed(5.500000);
BktGlitch_set_jumble_resolution(0.066667);
BktGlitch_set_jumble_shift(0.246667);
BktGlitch_set_channel_shift(0.007333);
BktGlitch_set_channel_dispersion(0.002500);
BktGlitch_set_shakiness(1.000000);
BktGlitch_set_rng_seed(0.000000);


//Drawing with shader active! 
draw_surface(application_surface, 0, 0);
//

//Done drawing to the shader!
shader_reset();