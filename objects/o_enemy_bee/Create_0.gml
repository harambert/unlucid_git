event_inherited();

if instance_exists(o_player) {
	if o_player.x > x {
		image_xscale = 1;
	} else {
		image_xscale = -1;
	}
}

depth = 1;
hp = 15;
hsp = 0;
movespd = 1;
damage = 10;
knockback = 1;
shooting = false;

alarm[11] = choose(120,180,240); //initiate shooting

stinger = instance_create_layer(x-16*image_xscale, y+10, "Instances", o_enemy_bee_stinger);

wait_cycle = choose(3,4,5);