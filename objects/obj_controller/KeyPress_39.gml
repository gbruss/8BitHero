if instance_exists(obj_right)
{
	var Roldest = instance_find(obj_right, 0);
	with(obj_right) {
	    if(age > Roldest.age)
	        Roldest = id;
	}
	if Roldest.y >= 750
	{
		//miss
		health -= 10;
	}
	else if Roldest.y < 750 && Roldest.y > 650
	{
		//bad
		health -= 5;
		score += 5;
		instance_destroy(Roldest);
		audio_play_sound(snd_mi, 3, false);
	}
	else if Roldest.y < 651 && Roldest.y > 579
	{
		//good
		healthCounter += 1;
		if healthCounter == 5
		{
			healthCounter = 0;
			health += 5;
		}
		score += 10;
		instance_destroy(Roldest);
		audio_play_sound(snd_mi, 3, false);
	}
	else if Roldest.y < 580
	{
		//perfect
		healthCounter += 1;
		if healthCounter == 5
		{
			healthCounter = 0;
			health += 5;
		}
		score += 20;
		instance_destroy(Roldest);
		audio_play_sound(snd_mi, 3, false);
	}
}