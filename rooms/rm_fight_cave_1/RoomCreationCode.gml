global.enemy_attack = irandom_range(0, 2);
visions = [snd_white, snd_red, snd_yellow ]
audio_stop_all()
audio_play_sound(snd_fight_music, 0, true)
audio_play_sound(visions[global.enemy_attack], 1, false)

with(inst_fight_tim_1) {
	TweenFire(id, EaseInOutQuad, TWEEN_MODE_PATROL, false, 0, 150, "y", id.y, id.y + 20);
}

with(inst_fork) {
	TweenFire(id, EaseInOutQuad, TWEEN_MODE_PATROL, false, 22.5, 150, "y", id.y, id.y + 20);
}