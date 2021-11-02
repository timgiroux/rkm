global.mid_transition = false;
global.room_target = -1;

function TransitionPlaceSeq(type)
{
	if (layer_exists("transition")) layer_destroy("transition");
	var lay = layer_create(-9999, "transition");
	layer_sequence_create(lay,0,0,type);
}

function TransitionStart(room_target, type_out, type_in)
{
	if(!global.mid_transition)
	{
		global.mid_transition = true;
		global.room_target = room_target;
		TransitionPlaceSeq(type_out);
		layer_set_target_room(room_target)
		TransitionPlaceSeq(type_in);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function TransitionChangeRoom()
{
	room_goto(global.room_target);
}

function FinishTransition()
{
	layer_sequence_destroy(self.elementID);
	global.mid_transition = false;
}