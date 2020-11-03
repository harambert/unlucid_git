var m = 2; //multiplyer for gui
var cs = 16; //cell size

var posx = 1120; // fixed map pos
var posy = 25;

map_left = (cell_column - 3) *cs
map_top = (cell_row - 2) * cs;

draw_sprite_ext(s_map_bg, 0,posx-2*m,posy-2*m,m,m,0,c_white,0.6);
draw_sprite_part_ext(s_map,0,map_left,map_top,cs*7,cs*5,posx,posy,m,m,c_white,0.6);
draw_sprite_ext(s_map_posn, 0,posx+3*cs*m,posy+2*cs*m,2,2,0,c_white,1);