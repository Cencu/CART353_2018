// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-4: Image sequence

Sequence[] sequences;


void setup() {
  size(600, 200);
  frameRate(5);
  
  sequences = new Sequence[3];
  
  int x = 0;
  int index = 0;
  
  for(int i = 0; i < sequences.length; i++) {
    sequences[i] = new Sequence(x, 0, index);
    x += 200;
    index++;
  }
}

void draw() {
  background(0);
  
  for(int i = 0; i < sequences.length; i++) {
    println(i);
    sequences[i].progress();
    sequences[i].display();
  }
}