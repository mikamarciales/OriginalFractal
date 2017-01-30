public void setup()
{
	size(600, 600);
	background(0);
}

public void draw()
{
	noFill();
	stroke(255);
	fractal(300, 300, 500);
}

public void fractal(int x, int y, int rad)
{
	ellipse(x, y, rad, rad);
	if(rad <= 75)
	{
		
	}
	else
	{
		fractal(x+rad/4, y, rad/2);
		fractal(x-rad/4, y, rad/2);
		fractal(x, y+rad/4, rad/2);
		fractal(x, y-rad/4, rad/2);
	}

	/*if(rad > 50)
	{
		ellipse(x, y, rad, rad);
		fractal(x+rad/4, y, rad/2);
		fractal(x-rad/4, y, rad/2);
		fractal(x, y+rad/4, rad/2);
		fractal(x, y-rad/4, rad/2);
	}*/
}