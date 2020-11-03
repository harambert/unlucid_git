if image_index < 2 and other.can_hit {
	with(other) {
		flash = true;
		can_hit = false;
		alarm[0] = 15;
		alarm[1] = 10;
		instance_create_layer(x,y,"Instances",o_sword_hit);
		var base_dmg = o_weapon.melee[2,o_weapon.current_weapon];
		var dmg = round(base_dmg + random_range(base_dmg * -dmg_wiggle , base_dmg * dmg_wiggle));
		hp -= dmg
		scr_screen_shake(2,10);
		with(other) {
			with(instance_create_layer(other.x,other.y,"Text",o_dmg_txt)) {
				dmg_txt = dmg;
			}
		}
	}
}