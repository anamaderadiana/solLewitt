color[] colorArray = new color[3];
float yoff = random(2.0,5.0);
float xoff = random(2.0,5.0);
float noff = random(5.0,8.0);
float increment = 0;


void setup() {
  size(1080, 1080);
  smooth(8);
  background(#EAEAEA);
  
  colorArray[0] = color(#4F6D7A);
  colorArray[1] = color(#C0D6DF);
  colorArray[2] = color(#FE6847);
  
  drawWall();
}

void drawWall() {
  drawHorizontalLines (0, width/2, 0, height/2);
  drawVerticalLines (0, width/2, 0, height/2);
  drawDiagonalRight (0, width/2, height/2);

  drawHorizontalLines (width/2, width, 0, height/2);
  drawVerticalLines (width/2, width, 0, height/2);
  drawDiagonalLeft (width/2, width, height/2, height);
  
  drawHorizontalLines (0, width/2, height/2, height);
  drawVerticalLines (0, width/2, height/2, height);
  drawDiagonalLeft2 (0, width/2, height/2, height);
  
  drawHorizontalLines (width/2, width, height/2, height);
  drawVerticalLines (width/2, width, height/2, height);
  drawDiagonalRight (width/2, width, height/2);
}

void drawDiagonalLeft (int minX, int maxX, int minY, int maxY) {
  for (int n = minX; n < maxX; n += noff) {
      stroke(color(colorArray[(int)random(3)]));
      strokeWeight(random(1.0));
      beginShape();
      vertex(n, minY);
      vertex(minX, maxY - n);
      endShape();
      noff = random(5.0,8.0);
  }
}

void drawDiagonalLeft2 (int minX, int maxX, int minY, int maxY) {
  for (int n = minX; n < maxX; n += noff) {
      stroke(color(colorArray[(int)random(3)]));
      strokeWeight(random(1.0));
      beginShape();
      vertex(n, minY);
      vertex(maxX, maxY - n);
      endShape();
      noff = random(5.0,8.0);
  }
}

void drawHorizontalLines (int minX, int maxX, int minY, int maxY) {
    for (int y = minY; y < maxY; y += yoff) {
      stroke(color(colorArray[(int)random(3)]));
      strokeWeight(random(1.0));
      beginShape();
      vertex(minX, y);
      vertex(maxX, y);
      endShape();
      yoff = random(5.0,8.0);
    }
}

void drawVerticalLines (int minX, int maxX, int minY, int maxY) {
  for(int x=0; x<maxX; x+= xoff) {
      stroke(color(colorArray[(int)random(3)]));
      strokeWeight(random(1.0));
      beginShape();
      vertex(minX + x, minY);
      vertex(minX + x, maxY);
      endShape();
      xoff = random(5.0,8.0);
  }
}

void drawDiagonalRight (int minX, int maxX, int value) {
  for (int n = minX; n < maxX; n += noff) {
      stroke(color(colorArray[(int)random(3)]));
      strokeWeight(random(1.0));
      beginShape();
      vertex(value, n);
      vertex(n, value);
      endShape();
      noff = random(5.0,8.0);
  }
}
void draw(){}
void keyPressed() { saveFrame("f####.jpg"); }