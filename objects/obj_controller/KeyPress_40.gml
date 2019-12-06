randomFlare = random(4);
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
		if health >= 10
			health -= 10;
	}
	else if Doldest.y < 750 && Doldest.y > 650
	{
		//bad
		if health >= 5
			health -= 5;
		
		score += 5;
		instance_destroy(Doldest);
		audio_play_sound(snd_1, 3, false);
	}
	else if Doldest.y < 651 && Doldest.y > 579
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
		instance_destroy(Doldest);
		audio_play_sound(snd_1, 3, false);
	}
	else if Doldest.y < 580
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
		instance_destroy(Doldest);
		audio_play_sound(snd_1, 3, false);
		//audio_play_sound(snd_drum1, 2, false);
		if randomFlare >= 3
			instance_create_layer(x, y, "Flares", obj_flare1);
		else if randomFlare >= 2 && randomFlare < 3
			instance_create_layer(x, y, "Flares", obj_flare2);
		else if randomFlare >= 1 && randomFlare < 2
			instance_create_layer(x, y, "Flares", obj_flare3);
		else
			instance_create_layer(x, y, "Flares", obj_flare4);
	}
}