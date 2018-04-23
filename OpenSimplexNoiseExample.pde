OpenSimplexNoise noise;
double FEATURE_SIZE = 24;

void setup() {
  size(512, 512, FX2D);
  strokeWeight(10);  
  noise = new OpenSimplexNoise();
}

void draw() {
  background(0);
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      double value = noise.eval(x / FEATURE_SIZE, y / FEATURE_SIZE, 0.0);
      int rgb = 0x010101 * (int)((value + 1) * 127.5);
      stroke(red(rgb), green(rgb), blue(rgb));
      point(x,y);
    }
  }
  FEATURE_SIZE = random(1, 50);
}
