if !instance_exists(o_player) exit;

var ox = 30; //origin x
var oy = guih - 70; //origin y
var buffer = 12;
var bar_height = 24;

draw_sprite_ext(s_hp_bg,0,ox,oy,4,4,0,c_white,1);
draw_sprite_stretched_ext(s_hp_bar,0,ox+buffer,oy+buffer,(player_hp/hp_max) * 200,bar_height,c_white,1);
draw_sprite_ext(s_hp_border,0,ox,oy,4,4,0,c_white,1);

scr_draw_set_text(c_white,fnt_UI,fa_left,fa_bottom)
draw_text_outlined(ox + 20, oy + 24, "HP: " + string(player_hp) + "/" + string(hp_max),c_white,c_black);
draw_set_valign(fa_top);