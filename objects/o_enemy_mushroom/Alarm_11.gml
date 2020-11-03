/// @description switch between walk and idle

if walking {
	alarm[11] = choose(120,180,240);
} else {
	alarm[11] = choose(180,240,300);
}
walking = !walking;