/// @description activate super

if !instance_exists(o_player) exit;

with(o_player)
{
	state = state_activate_super;
	dash_aura = true;
	alarm[3] = 5; //dash effect
}

alarm[4] = 30; //finish everything