draw_set_alpha(alpha);
scr_draw_set_text(color,fnt_dmg,fa_center,fa_center);
draw_text_outlined(x,y,string(dmg_txt),color,outline);
draw_set_alpha(1);
alpha -= 0.02