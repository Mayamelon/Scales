void setup() {
  size(1280, 720);
  for (int x = 0; x < 50; x++) {
    for (int y = 0; y < 50; y++) {
      drawHexGradient(x*50-20, y*30-20, 20);
    }
    for (int y = 0; y < 50; y++) {
      drawHexGradient(x*50, y*30, 20);
    }
  }
}

void draw() {
  
}

void drawHexGradient(int xPos, int yPos, int sideLength) {
  noStroke();
  for (int i = 0; i < sideLength; i++) {
    fill(255,150+(i*125/sideLength),0);
    drawHex(xPos, yPos, sideLength-i);
  }
  stroke(0,0,0);
  strokeWeight(2);
  noFill();
  drawHex(xPos, yPos, sideLength);
}

void drawHex(int xPos, int yPos, int sideLength) {
  beginShape();
  curveVertex(sideLength*1/2+xPos, sideLength*-sqrt(3)/2+yPos);
  curveVertex(sideLength*1/2+xPos, sideLength*-sqrt(3)/2+yPos);
  curveVertex(sideLength*1+xPos, 0+yPos);
  curveVertex(sideLength*1/2+xPos, sideLength*sqrt(3)/2+yPos);
  curveVertex(sideLength*-1/2+xPos, sideLength*sqrt(3)/2+yPos);
  curveVertex(sideLength*-1+xPos, 0+yPos);
  curveVertex(sideLength*-1/2+xPos, sideLength*-sqrt(3)/2+yPos);
  curveVertex(sideLength*-1/2+xPos, sideLength*-sqrt(3)/2+yPos);
  endShape(CLOSE);
}
