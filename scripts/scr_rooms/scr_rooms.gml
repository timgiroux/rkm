function determine_next_room(){
	if(global.levels_complete == 0)
	{
		return rm_fight_cave_1;
	}
	
	if(global.levels_complete == 1)
	{
		return rm_fight_cave_2;
	}
	
	return rm_final_fight_intro;
}