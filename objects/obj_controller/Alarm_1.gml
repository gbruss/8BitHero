alarm[1] = beatInterval;
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

if currentBeat == 1
{
	//
	currentBeat += 1;
	audio_stop_sound(snd_drum1);
	audio_play_sound(snd_drum2, 1, true);
	layer_background_speed(back_id, 1.5);
}
else if currentBeat == 2
{
	//
	currentBeat += 1;
	audio_stop_sound(snd_drum2);
	audio_play_sound(snd_drum3, 1, true);
	layer_background_speed(back_id, 2);
	
}
else if currentBeat == 3
{
	//
	currentBeat += 1;
	audio_stop_sound(snd_drum3);
	audio_play_sound(snd_drum4, 1, true);
	layer_background_speed(back_id, 2.5);
}
else if currentBeat == 4
{
	//
}