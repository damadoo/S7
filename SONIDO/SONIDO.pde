import processing.sound.*;

import processing.sound.*;
import processing.sound.FFT;

SoundFile soundfile;
FFT fft;

int timeLapse;

int bands = 256;

float [] spectrum = new float [bands];

int x = 0;
int y = 70;

float radio;

void setup () {
  size (1000, 1000);
  background (0);
  noStroke();
  frameRate(10);
  
  //cancion
  soundfile = new SoundFile(this, "Taro.mp3");
  
  //analizador de frecuencias
  fft = new FFT (this, bands);
  
  //analiza la cancion
  fft.input (soundfile);
  
  //reproduce la cancion
  soundfile.play();
}

void draw () {
  
  fft.analyze(spectrum);
  
  float level = spectrum [10]; 
  radio = (level * width);
  
  radio = constrain (radio, 10, 500);
 
  
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
