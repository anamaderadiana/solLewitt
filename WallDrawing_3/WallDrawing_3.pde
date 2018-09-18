color[] colorArray = new color[5];
int n = 0;
float yoff = random(2.0, 5.0);
float xoff = random(2.0, 5.0);
float xoff2 = random(2.0, 5.0);
int increment = 150;

void setup()
{
  size(1080,360);
  smooth(8);
  background(#f4f4f4);
  
  colorArray[0] = color(#455A64);
  colorArray[1] = color(#546E7A);
  colorArray[2] = color(#607D8B);
  colorArray[3] = color(#78909C);
  colorArray[4] = color(#90A4AE);
  
  drawWall();
}

void drawWall()
{   
    for (int y = n; y < height - n; y += yoff) {
      stroke(color(colorArray[(int)random(5)]));
      strokeWeight(random(1.0));
      beginShape();
      vertex(0, y);
      vertex(width, y);
      endShape();
      yoff = random(1.0, 5.0);
    }
    
    for (int x = 0; x < width - increment; x += xoff){
      stroke(color(colorArray[(int)random(5)]));
      strokeWeight(random(1.0));
      beginShape();
      vertex(x,n);
      vertex(x+increment, height-n);
      endShape();
      xoff = random(1.0, 5.0);
    }
    
     for (int x = 0; x < width - increment; x += xoff2){
      stroke(color(colorArray[(int)random(5)]));
      strokeWeight(random(1.0));
      beginShape();
      vertex(x+increment,n);
      vertex(x, height-n);
      endShape();
      xoff2 = random(1.0, 5.0);
    }
}

void draw(){}
void keyPressed() { saveFrame("f####.jpg"); }