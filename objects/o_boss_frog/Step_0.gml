if sprite_index == s_boss_frog_idle and !stopped {
	if instance_exists(o_player) {
		if o_player.x < x {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
	}
}

if sprite_index == s_boss_frog_jump {
	if (instance_exists(o_player) and x < o_player.x +5 and x > o_player.x - 5 and y < o_player.y - 90) and !stopped 
	or (vsp < 0 and vsp > -0.5) {
		sprite_index = s_boss_frog_smash_prepare;
		hsp = 0;
		vsp = -3;
	}
}

if sprite_index == s_boss_frog_smash_prepare {
	if vsp > 0 {
		dash_aura = false
		part_particles_create(system,x,y+64,particle,1);
		alarm[9] = 3; //create shockwave
		sprite_index = s_boss_frog_smash;
		vsp = 15;
		damage = 45;
		knockback = 3;
	}
}

if sprite_index == s_boss_frog_smash {
	if place_meeting(x,y+1,o_wall) {
		sprite_index = s_boss_frog_smash_done;
		vsp = 0;
		alarm[8] = 30; //recover
		scr_screen_shake(3,45);
		part_particles_create(system,x,bbox_bottom,particle3,20);
		part_particles_create(system,x,bbox_bottom,particle2,1);
		with(instance_create_layer(x,y+16,"Instances",o_boss_frog_smash_dmg)) {
			image_xscale = 1.3;
			image_yscale = image_xscale;
		}
	}
}

vsp += grv;

scr_collision_check();