if !instance_exists(o_player) and !instance_exists(o_player_enter_vert) and !instance_exists(o_player_enter_horiz)
{
	instance_change(o_player,true);
} else {
	instance_destroy();
}