/// @description Insert description here
// You can write your code in this editor
path_start(determine_mtn_path(), 1, path_action_stop, true);
path_position = 0;

if ( global.levels_complete == 0 )
{
	path_speed = .12;
}
else
{
	path_speed = .5;
}