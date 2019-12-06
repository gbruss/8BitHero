randomize();
alarm[0] = flareTime;
image_xscale = flareScale;
image_yscale = flareScale;
destinationX = random(4);
destinationY = random(4);

if destinationY >= 3
	y = flareY1;
else if destinationY >= 2 && destinationY < 3
	y = flareY2;
else if destinationY >= 1 && destinationY < 2
	y = flareY3;
else
	y = flareY4;

if destinationX >= 3
	x = flareX1;
else if destinationX >= 2 && destinationX < 3
	x = flareX2;
else if destinationX >= 1 && destinationX < 2
	x = flareX3;
else
	x = flareX4;