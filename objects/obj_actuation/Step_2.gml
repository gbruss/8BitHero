/*
if instance_exists(obj_Frog)
{
	if place_meeting(x, y, obj_Frog) && obj_Frog.hspeed == 0
	{
		with obj_Egg
			if !place_meeting(x, y, obj_Frog)
			{
				//instance_destroy(obj_Frog);
				if obj_dangerZone.canDie == true
				{
					with(obj_Frog) instance_change(obj_death, true);
					audio_play_sound(snd_water, 2, false);
					obj_dangerZone.canDie = false;
				}
				//if lives > 0
					//instance_create_layer(480, 992, "danger", obj_Frog);
					
			}
	}
}
*/