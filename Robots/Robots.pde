<<<<<<< HEAD
//// This function runs once in your sketch
//void setup() {

//  // Create the canvas
//  size(1000, 700);

//  // White background
//  background(255);

//  // Create an instance of the RGRobot class
//  RGRobot gordonBot = new RGRobot();

//  // "Stamp out" two images of this bot using the given arguments
//  gordonBot.drawAt(100, 200, 1.0, 1.0);
//  gordonBot.drawAt(500, 100, 0.5, 0.5);


int scene = 1;

void setup() {

  //create canvas
  size(1000, 700);
}

void draw() {

  //always clear background
  background(50);

  if (scene == 1) {

    DDRobot dariusbot = new DDRobot();
    SCRobot spencerbot = new SCRobot();
    EPRobot2 ethanbot2 = new EPRobot2();
    ASPRobot adambot = new ASPRobot();
    BDRobot benbot = new BDRobot();
    DHRobot danbot = new DHRobot();
    EPRobot ethanbot = new EPRobot();

    //int counter = 0;
    //while (counter < 5) 
    //counter += 1;
    //print(50 + 100 * counter);

    int R2x = 850;
    int R2y = 325;

    filter(BLUR, 4);

    //draw the two main robots
    dariusbot.drawAt(400, 250);
    spencerbot.drawAt(R2x, R2y, 3.5, 3.5);

    //create speech bubble
    fill(255);
    ellipse(R2x - 70, R2y + 90, 100, 50);
    //create text in speech bubble
    fill(0);
    textSize(16);
    textAlign(CENTER);
    text ("Beep-Boop!", R2x - 205, R2y + 80, 275, 125);
  } else if (scene == 2) {
     textSize(32);
    fill(255);
    text("Scene2", 500, 350);
  }
} 
void keyPressed() {
  if ( keyCode == ' ') {
    scene += 1;
  }
}
=======
void setup() {
} 
>>>>>>> rsgc-ics2o-spring2016/master
