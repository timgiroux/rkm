function scr_roshambo(player_attack) {
	
	// rock     : 0  (ranch)
	// paper    : 1  (ketchup)
	// scissors : 2  (mustard)
	
	condiments = [ obj_static_ranch, obj_static_ketchup, obj_static_mustard ]
	player_attack_obj = condiments[player_attack]
	enemy_attack_obj = condiments[global.enemy_attack]
	
	instance_create_layer(226, 224, "attack_objects", player_attack_obj )
	instance_create_layer(306, 94, "attack_objects", enemy_attack_obj )
	
	global.player_win = checkwin_roshambo(player_attack, global.enemy_attack);

	if( global.player_win )
	{
		instance_create_layer(0, 0, "win", obj_win_scr );
		audio_play_sound(snd_win, 0, false);
	}
	else
	{
		instance_create_layer(0, 0, "win", obj_lose_scr );
		audio_play_sound(snd_lose, 0, false);
	}
	
	obj_fight_timer.alarm[0] = 150;
}

function end_fight() {
	if(global.player_win) {
		global.levels_complete++;
		if(global.levels_complete == 3) {
			TransitionStart(rm_win, seq_slide_in, seq_slide_out);
		} else {
			TransitionStart(rm_mountain, seq_slide_in, seq_slide_out);
		}
	}
	else {
		reset_roshambo();
	}
		
	
}

function checkwin_roshambo(player_attack, enemy_attack) {
	
	if(player_attack == enemy_attack) {
		return false;
	}
	
	if( (player_attack == 0) and (enemy_attack == 1) ) {
		return false;
	}
	
	if( (player_attack == 1) and (enemy_attack == 2) ) {
		return false;
	}
	
	if( (player_attack == 2) and (enemy_attack == 0) ) {
		return false;
	}
	
	return true;
}


function reset_roshambo() {
	room_restart();
}