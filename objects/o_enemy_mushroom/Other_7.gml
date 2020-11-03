if sprite_index == s_enemy_mushroom_atk_prepare
{
	instance_create_layer(x,y,"Instances",o_enemy_mushroom_spore);
	sprite_index = s_enemy_mushroom_atk;
}