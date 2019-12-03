if instance_exists(obj_left)
{
	var Loldest = instance_find(obj_left, 0);
	with(obj_left) {
	    if(age > Loldest.age)
	        Loldest = id;
	}
	if Loldest.y >= 750
	{
		//miss
		if health >= 10
			health -= 10;
	}
	else if Loldest.y < 750 && Loldest.y > 650
	{
		//bad
		if health >= 5
			health -= 5;
			
		score += 5;
		instance_destroy(Loldest);
		audio_play_sound(snd_3, 3, false);
	}
	else if Loldest.y < 651 && Loldest.y > 579
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
		instance_destroy(Loldest);
		audio_play_sound(snd_3, 3, false);
	}
	else if Loldest.y < 580
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
		instance_destroy(Loldest);
		audio_play_sound(snd_3, 3, false);
		audio_play_sound(snd_drum2, 2, false);
	}
}