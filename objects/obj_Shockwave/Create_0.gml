/// @description  Initialise required variables

// Init general variables
wave_view = -1;
wave_width = 64;
wave_radius = 0;
wave_max_radius = 256
wave_speed = 3;
wave_segment = 12;
wave_blend = c_white;
wave_update = false;
wave_inner = false;
wave_additive = false;
wave_push = wave_width;

// Init the surface variables
wave_surf = -1;         // Surface ID holder
wave_surf_t = -1;       // Surface texture holder
wave_surf_w = -1;       // Surface width  
wave_surf_h = -1;       // surface height

// Create vertex buffers for effect
wave_vb_inside  = vertex_create_buffer();   // Vertex buffer for inner part of wave effect
wave_vb_outside = vertex_create_buffer();   // Vertex buffer for outer part of wave effect

// Create vertex format
vertex_format_begin();
vertex_format_add_position();
vertex_format_add_texcoord();
vertex_format_add_colour();
wave_vf = vertex_format_end();

// IMPORTANT! The above vertex format can be defined ONCE at the start of the game and stored
// in a GLOBAL variable. This will help make the scripts more efficient, especially if you plan 
// on showing multiple shockwave effects at once. If you do this, make sure to do a Search/Replace
// for "wave_vf" and change it for the global variable, and also be sure to remove the call to
// delete the vertex format in the "shockwave_cleanup" script to prevent errors.


