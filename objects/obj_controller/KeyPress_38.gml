if instance_exists(obj_up)
{
	var Uoldest = instance_find(obj_up, 0);
	with(obj_up) {
	    if(age > Uoldest.age)
	        Uoldest = id;
	}
	if Uoldest.y >= 750
	{
		//miss
		if health >= 10
			health -= 10;
	}
	else if Uoldest.y < 750 && Uoldest.y > 650
	{
		//bad
		if health >= 5
			health -= 5;
		
		score += 5;
		instance_destroy(Uoldest);
		audio_play_sound(snd_7, 3, false);
	}
	else if Uoldest.y < 651 && Uoldest.y > 579
	{
		//good
		healthCounter += 1;
		if healthCounter == 5
		{
			healthCounter = 0;
			if health < 100
				health += 5;
		}
		score += 10;
		instance_destroy(Uoldest);
		audio_play_sound(snd_7, 3, false);
	}
	else if Uoldest.y < 580
	{
		//perfect
		healthCounter += 1;
		if healthCounter == 5
		{
			healthCounter = 0;
			if health < 100
				health += 5;
		}
		score += 20;
		instance_destroy(Uoldest);
		audio_play_sound(snd_7, 3, false);
		audio_play_sound(snd_drum4, 2, false);
	}
}