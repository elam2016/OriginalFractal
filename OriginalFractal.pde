int screenSize = 500;
void setup(){
	size(screenSize + 50, screenSize + 50);
	background(0);
	noLoop();
}

void draw(){
	noStroke();
	fill(255);
	kochSnowflake(100, 100, 120);
}

void kochSnowflake(int x, int y, int h){
	triangle(x - h/2, y + h/2, x + h/2, y + h/2, x, y - h/2);
	if(h >= 10){
		pushMatrix();
		translate(x - h/2.35, y);
		rotate(-PI/2.85);
		kochSnowflake(0, 0, h/3);
		popMatrix();

		pushMatrix();
		translate(x + h/2.35, y);
		rotate(PI/2.85);
		kochSnowflake(0, 0, h/3);
		popMatrix();

		pushMatrix();
		translate(x, y + h/1.55);
		rotate(PI);
		kochSnowflake(0, 0, h/3);
		popMatrix();

		pushMatrix();
		translate(x, y + h/1.55);
		rotate(PI);
		kochSnowflake(0, 0, h/9);
		popMatrix();
	}
}
