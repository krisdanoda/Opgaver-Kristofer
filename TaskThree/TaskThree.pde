//TaskThree Kristofer
color red = color(155, 10, 10);
color green = color(10, 230, 40);
color yellow = color(250, 250, 20);
color grey = 150;
int Color = 1;
int itteration; 
boolean flag;


void setup() {
  size(300, 500);
  //fill(grey);
  //rect(15, 30, width-30, height-60);

  //for (int i=1; i<=3; i++) {
  //  circle(width/2, i*height/4, 100);
  frameRate(0.5);
  }

void draw() {
  background(255);
// draw trafik lights 
  fill(grey);

  //tejner trafiklys
  rect(15, 30, width-30, height-60);

  for (int i=1; i<=3; i++) {
    circle(width/2, i*height/4, 100);
  
  }
  
  // Lights up according to state and changes color
  if ( Color == 3) {
    fill(red);
    circle(width/2, 1*height/4, 100);
    Color = 2;
    //flag = false;
  } else if (Color ==2) {
    fill(yellow);
    circle(width/2, 2*height/4, 100);
    Color = 1;
    //flag = false;
  } else if (Color ==1) {
    fill(green);
    circle(width/2, 3*height/4, 100);
    Color = 3;
    //flag = false;
  }

itteration ++; //debug
println(itteration);
}
