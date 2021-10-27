// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_roshambo(player_attack) {
	
	// rock     : 0  (ranch)
	// paper    : 1  (ketchup)
	// scissors : 2  (mustard)
	enemy_attack = global.enemy_attack;
	
	
	// draw sprite
	if(player_attack == 0) {
		player_attack_spr = spr_ranch;
	}
	else if(player_attack == 1) {
		player_attack_spr = spr_ketchup;
	}
	else {
		player_attack_spr = spr_mustard;
	}
	
	if(enemy_attack == 0) {
		enemy_attack_spr = spr_ranch;
	}
	else if(enemy_attack == 1) {
		enemy_attack_spr = spr_ketchup;
	}
	else {
		enemy_attack_spr = spr_mustard;
	}
	
	draw_sprite(player_attack_spr, 1, 256, 384);
	draw_sprite(enemy_attack_spr, 1, 256, 128);
	
	draw_sprite(spr_win_msg, 0, 0, 0);
	
	global.player_win = checkwin_roshambo(player_attack, enemy_attack);

	show_debug_message(global.player_win);

	obj_fight_timer.alarm[0] = 100;
}

function end_fight() {
	if(global.player_win) {
		global.levels_complete++;
		if(global.levels_complete == 3) {
			room_goto(rm_win);
		} else {
			room_goto(rm_mountain);
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