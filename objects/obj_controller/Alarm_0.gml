alarm[0] = obstacleInterval;
if layer_get_visible("Blackout")
{
	layer_set_visible("Blackout", false);
	obstacleChance = 9;
}
if random(10) >= obstacleChance
{
   layer_set_visible("Blackout", true);
}
else
{
	if obstacleChance > 0
		obstacleChance -= 1;
}

