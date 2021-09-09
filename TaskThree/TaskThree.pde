//TaskThree Kristofer
color red = color(155, 10, 10);
color green = color(10, 230, 40);
color yellow = color(250, 250, 20);
color grey = 150;
int Color = 1; //controls which color to draw
int itteration; //Bug fixing 
boolean flag;


void setup() {
  size(300, 500);
  frameRate(0.5);
  }

void draw() {
//refresh screen
  background(255);
// redraw trafik lights 
  fill(grey);
  rect(15, 30, width-30, height-60);
//draws 3 lights turned off
  for (int i=1; i<=3; i++) {
    circle(width/2, i*height/4, 100);
  }
  
  // Lights up according to color and changes color. At the end of each case color is changed to a different value for the next iteration
  if ( Color == 3) {
    fill(red);
    circle(width/2, 1*height/4, 100);
    Color = 2;
    
  } else if (Color ==2) {
    fill(yellow);
    circle(width/2, 2*height/4, 100);
    Color = 1;
   
  } else if (Color ==1) {
    fill(green);
    circle(width/2, 3*height/4, 100);
    Color = 3;
    
  }

itteration ++; //debug
println(itteration);
}
