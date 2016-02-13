int screenSize = 700;
void setup(){
	size(screenSize, screenSize);
	background(0);
	noLoop();
}

void draw(){
	noStroke();
	fill(255);
	kochSnowflake(screenSize/2, screenSize/2 - 70, 480);
}

void kochSnowflake(int x, int y, float h){
	triangle(x - h/2, y + h/2, x + h/2, y + h/2, x, y - h/2);
	if(h >= 10){
		//top
		pushMatrix();
		translate(x, y - h/3.52);
		kochSnowflake(0, 0, h/2.3);
		popMatrix();

		//bottom left
		pushMatrix();
		translate(x - h/2.62, y + h/2.35);
		rotate(-PI/1.52);
		kochSnowflake(0, 0, h/3.2);
		popMatrix();

		//bottom right
		pushMatrix();
		translate(x + h/2.62, y + h/2.35);
		rotate(PI/1.54);
		kochSnowflake(0, 0, h/3.2);
		popMatrix();

		//top left
		pushMatrix();
		translate(x - h/2.35, y);
		rotate(-PI/2.85);
		kochSnowflake(0, 0, h/3);
		popMatrix();

		//top right
		pushMatrix();
		translate(x + h/2.35, y);
		rotate(PI/2.85);
		kochSnowflake(0, 0, h/3);
		popMatrix();

		//bottom
		pushMatrix();
		translate(x, y + h/1.55);
		rotate(PI);
		kochSnowflake(0, 0, h/3);
		popMatrix();

		//small top left
		pushMatrix();
		translate(x - h/6.45, y - h/3.45);
		rotate(-PI/2.85);
		kochSnowflake(0, 0, h/9);
		popMatrix();
		
		//small top right
		pushMatrix();
		translate(x + h/6.35, y - h/3.45);
		rotate(PI/2.85);
		kochSnowflake(0, 0, h/9);
		popMatrix();

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

		//small bottom bottom right
		pushMatrix();
		translate(x + h/3.15, y + h/1.81);
		rotate(PI);
		kochSnowflake(0, 0, h/9);
		popMatrix();
	}
}
