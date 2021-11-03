// initialising float for position of middle outer circle
float x = 0;
float y = 0;

// initialising position of middle inner circle that reacts to keyPressed
float x2 = 0;
float y2 = 0;

// initialising repeated circles top x float
float x3 = 0;

// initialising repeated circles bottom x float
float x4 = 0;

// initialising floats for random middle circle colours
float R = 0;
float G = 0;
float B = 0;

// screen setup (including size and frame rate)
// setting up RGB to randomise colours [between 0 (black) and 255 (white) on the RGB scale] 
void setup(){
  size(800,800);
  R = random(0, 255);
  G = random(0, 255);
  B = random(0, 255);
  frameRate(35); 
}

void draw() {
  // background colour as black
  background(0);

  // middle circle (outer) 
  // random RGB values for fill and stroke 
  // stroke weight is 10
  // circles move with the mouse and change size to a random value within the size of the screen
  fill(R,G,B);
  stroke(G,B,R);
  strokeWeight(10);
  ellipse(mouseX,mouseY,random(width),random(height));
  
  // middle circle (interior) 
  // random colour - different to the outer circle
  // move with the mouse
  // change to random sizes with the x2 / y2 values, which can be triggered by pressing any key through the keyPressed function
  fill(G,B,R);
  ellipse(mouseX,mouseY,x2,y2);
  
  //small dot within the middle circle 
  fill(R,G,B);
  stroke(R,G,B);
  ellipse(mouseX,mouseY,50,y2);
   
  
  // top circles
  // start x to 0
  // loop (while) through and create new circles - 35 is how spaced apart they are (pixels), until the x value exceeds the width of screen
  // all circles are at a y value of 100 (second parameter)
  // relational operator used (<)
  x3 = 0;
  while(x3 < width) {
    x3 = x3 + 35;
    fill(250,153,63);
    stroke(0,255,0,random(255));
    strokeWeight(2);
    ellipse(x3,100,15,15);
    
  // top circles (interior)
  fill(0,255,0);
  ellipse(x3,100,5,5);
  }
  
  // bottom circles
  // start x at 0
  // loop (while) through and create new circles - 35 is how spaced apart they are (pixels), until the x value exceeds the width of screen
  // all circles are at a y value of 700 (second parameter)
  // relational operator used (<)
  x4 = 0;
  while(x4 < width) {
    x4 = x4 + 35;
    fill(250,153,63);
    stroke(82,133,240,random(255));
    strokeWeight(3);
    ellipse(x4,700,15,15);
    
  // bottom circles (interior)
  fill(82,133,240);
  ellipse(x4,700,5,5);
  }
  
  }

void keyPressed() {
  // randomise width and height of circles when key pressed
  x2 = random(width);
  y2 = random(height);
  
  // middle circle colours changed to random colours when space bar is pressed specifically 
  // if statement used 
  // relational operator used (==)
  // ' ' refers to the space bar
  if(key == ' ') {
    R = random(0, 255);
    G = random(0, 255);
    B = random(0, 255); 
  }
}
   
