// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function determine_next_room(){
	if(global.levels_complete == 0)
	{
		return rm_fight_cave_1;
	}
	
	if(global.levels_complete == 1)
	{
		return rm_fight_cave_2;
	}
	
	return rm_fight_mountain;
}