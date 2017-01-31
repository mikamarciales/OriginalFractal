int num = 50;
int col = color(255);

public void setup()
{
	size(800, 800);
}

public void draw()
{
	background(0);
	noFill();
	stroke(col);
	strokeWeight(1);
	fractal(mouseX, mouseY, 500);
}

/*public void mousePressed()
{
	if(num > 50)
	{
		num -= num/2;		
	}
	System.out.println(num);
}*/

public void fractal(int x, int y, int rad)
{
	ellipse(x, y, rad, rad);
	if(rad <= num)
	{
		
	}
	else
	{
		fractal(x+rad/4, y, rad/2);
		fractal(x-rad/4, y, rad/2);
		fractal(x, y+rad/4, rad/2);
		fractal(x, y-rad/4, rad/2);
		col --;
		//System.out.println(col);
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