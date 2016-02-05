int screenSize = 500;
void setup(){
	size(screenSize, screenSize);
	background(0);
	noLoop();
}

void draw(){
	noStroke();
	fill(255);
	kochSnowflake(screenSize/2, screenSize/2 - 50, 240);
}

void kochSnowflake(int x, int y, int h){
	triangle(x - h/2, y + h/2, x + h/2, y + h/2, x, y - h/2);
	//stroke(0);
	triangle(x - h/2, y - h*(2/3), x + h/2, y - h*(2/3), x, y + h*(2/3));
	if(h >= 10){
		noStroke();
		//top left
		pushMatrix();
		translate(x - h/2.35, y);
		rotate(-PI/2.85);
		kochSnowflake(0, 0, h/3);
		popMatrix();

		//stroke(0);
		//top right
		pushMatrix();
		translate(x + h/2.35, y);
		rotate(PI/2.85);
		kochSnowflake(0, 0, h/3);
		popMatrix();

		//noStroke();
		//bottom
		//stroke(0);
		pushMatrix();
		translate(x, y + h/1.55);
		rotate(PI);
		kochSnowflake(0, 0, h/3);
		popMatrix();

		noStroke();
		//small top left
		pushMatrix();
		translate(x - h/6.45, y - h/3.45);
		rotate(-PI/2.85);
		kochSnowflake(0, 0, h/9);
		popMatrix();
		
		//stroke(0);
		//small top right
		pushMatrix();
		translate(x + h/6.35, y - h/3.45);
		rotate(PI/2.85);
		kochSnowflake(0, 0, h/9);
		popMatrix();

		//stroke(0);
		//small bottom top left
		pushMatrix();
		translate(x - h/2.2, y + h/3.25);
		rotate(PI/-2.85);
		kochSnowflake(0, 0, h/9);
		popMatrix();

		//small bottom top right
		pushMatrix();
		translate(x + h/2.16, y + h/3.25);
		rotate(PI/2.85);
		kochSnowflake(0, 0, h/9);
		popMatrix();

		//stroke(0);
		//small bottom bottom left
		pushMatrix();
		translate(x - h/3.15, y + h/1.81);
		rotate(PI);
		kochSnowflake(0, 0, h/9);
		popMatrix();

		//small bottom bottom right
		pushMatrix();
		translate(x + h/3.15, y + h/1.81);
		rotate(PI);
		kochSnowflake(0, 0, h/9);
		popMatrix();
	}
}
