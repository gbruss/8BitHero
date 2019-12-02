if instance_exists(obj_down)
{
	var Doldest = instance_find(obj_down, 0);
	with(obj_down) {
	    if(age > Doldest.age)
	        Doldest = id;
	}
	if Doldest.y >= 750
	{
		//miss
		health -= 10;
	}
	else if Doldest.y < 750 && Doldest.y > 650
	{
		//bad
		health -= 5;
		score += 5;
		instance_destroy(Doldest);
		audio_play_sound(snd_ti, 3, false);
	}
	else if Doldest.y < 651 && Doldest.y > 579
	{
		//good
		healthCounter += 1;
		if healthCounter == 5
		{
			healthCounter = 0;
			health += 5;
		}
		score += 10;
		instance_destroy(Doldest);
		audio_play_sound(snd_ti, 3, false);
	}
	else if Doldest.y < 580
	{
		//perfect
		healthCounter += 1;
		if healthCounter == 5
		{
			healthCounter = 0;
			health += 5;
		}
		score += 20;
		instance_destroy(Doldest);
		audio_play_sound(snd_ti, 3, false);
	}
}