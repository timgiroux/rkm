audio_stop_all()

audio_play_sound(snd_up_the_mountain, 0, false)

if( global.levels_complete == 0 )
{
	audio_play_sound(snd_prophetic_visions, 1, false)
}