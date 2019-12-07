alarm[1] = 6800;

if currentBeat == 1
{
	currentBeat += 1;
	minInterval -= 15;
	maxInterval -= 50;
}
else if currentBeat == 2
{
	currentBeat += 1;
	minInterval -= 10;
	maxInterval -= 50;
}
else if currentBeat == 3
{
	currentBeat += 1;
	minInterval -= 25;
	maxInterval -= 75;
}
else if currentBeat == 4
{
	//
}
