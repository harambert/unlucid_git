var base_dmg = damage

if other.can_hit {
	with(other) {
		flash = true;
		alarm[1] = 5
		var dmg = base_dmg + round(random_range(base_dmg * -dmg_wiggle, base_dmg * dmg_wiggle))
		hp -= dmg;
		scr_screen_shake(1,5);
		with(other) {
			with(instance_create_layer(other.x,other.y,"Text",o_dmg_txt)) {
				dmg_txt = dmg;
			}
		}
	}
	instance_change(o_bullet_plasma_hit,true);
}