var base_dmg = damage

if other.can_hit and image_index == 0 {
	with(other) {
		flash = true;
		alarm[1] = 5
		var dmg = base_dmg + round(random_range(base_dmg * -dmg_wiggle, base_dmg * dmg_wiggle))
		hp -= dmg;
		with(other) {
			with(instance_create_layer(other.x,other.y,"Text",o_dmg_txt)) {
				dmg_txt = dmg;
			}
		}
	}
}