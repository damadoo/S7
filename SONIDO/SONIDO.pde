int x = 0;
int y = 70;

float radio;

void setup () {
  size (1000, 1000);
  background (0);
  noStroke();
  frameRate(30);
}

void draw () {
  // numero provisional
  float numAleatorio = random(0, 1);
  radio =(numAleatorio * width / 2);

  
    fill (random (150, 200), random (100, 250), random (200, 250));
    stroke (random (150, 200), random (100, 250), random (200, 250));
    rect (x, y, 50, radio/2, 50);
    x += 10;

    //eje vertical
    if (x > width) {
      x = 0;
      y = y + 70;
    }
    
    // eje horizontal
      if (y < height) {
   
  }
}
