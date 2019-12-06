alarm[0] = flareTime;
image_xscale = flareScale;
image_yscale = flareScale;
destination = random(4);

if destination >= 3
{
	x = flareX1;
	y = flareY1;
}
else if destination >= 2 && destination < 3
{
	x = flareX2;
	y = flareY2;
}
else if destination >= 1 && destination < 2
{
	x = flareX3;
	y = flareY3;
}
else
{
	x = flareX4;
	y = flareY4;
}