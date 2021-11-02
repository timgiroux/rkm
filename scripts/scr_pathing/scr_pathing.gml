function determine_mtn_path(){
	if(global.levels_complete == 0)
	{
		return path_mountain_1;
	}
	
	if(global.levels_complete == 1)
	{
		return path_mountain_2;
	}
	
	return path_mountain_3;
}