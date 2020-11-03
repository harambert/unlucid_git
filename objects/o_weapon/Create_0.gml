#region MELEE

//	0x name								1x sprite					2x damage			3x ground player animation			4x air player animation					5x weapon type
melee[0,0] = "plasma sword"		melee[1,0] = s_sword_plasma		melee[2,0] = 20		melee[3,0] = s_player_atk_sword		melee[4,0] = s_player_atk_sword_air		melee[5,0] = "sword"

#endregion
#region GUNS

//	0x name							1x bullet object			2x cooldown				3x idle player animation			4x air player animation				5x run player animation				6x muzzle animation
gun[0,0] = "plasma gun"		gun[1,0] = o_bullet_plasma_gun		gun[2,0] = 10			gun[3,0] = s_player_shoot			gun[4,0] = s_player_shoot_air			gun[5,0] = s_player_shoot_run		gun[6,0] = s_muzzle_plasma		

#endregion

current_weapon = 0;
current_gun = 0;