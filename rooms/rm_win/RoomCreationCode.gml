audio_stop_all();

with(obj_play_again_btn)
{
	TweenEasyMove(-96, 448, 96, 448, 180, 120, EaseInOutSine);
}

with(obj_quit_btn)
{
	TweenEasyMove(608, 448, 416, 448, 180, 120, EaseInOutSine);
}

with(obj_victory)
{
	TweenEasyMove(544, 96, 320, 96, 0, 60, EaseInOutSine);
}

with(obj_what_cost)
{
	TweenEasyMove(576, 128, 352, 128, 120, 120, EaseInOutSine);
}