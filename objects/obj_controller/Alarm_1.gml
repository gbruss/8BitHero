alarm[1] = beatInterval;

if currentBeat == 1
{
	//
	currentBeat += 1;
	audio_stop_sound(snd_drum1);
	audio_play_sound(snd_drum2, 1, true);
}
else if currentBeat == 2
{
	//
	currentBeat += 1;
	audio_stop_sound(snd_drum2);
	audio_play_sound(snd_drum3, 1, true);
}
else if currentBeat == 3
{
	//
	currentBeat += 1;
	audio_stop_sound(snd_drum3);
	audio_play_sound(snd_drum4, 1, true);
}
else if currentBeat == 4
{
	//
}