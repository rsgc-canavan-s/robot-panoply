
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
    
    //declaring all robots that I need
    DDRobot dariusbot = new DDRobot();
    SCRobot spencerbot = new SCRobot();
    EPRobot2 ethanbot2 = new EPRobot2();
    ASPRobot adambot = new ASPRobot();
    BDRobot benbot = new BDRobot();
    DHRobot danbot = new DHRobot();
    EPRobot ethanbot = new EPRobot();
    TMRobots timbot = new TMRobots();

    spencerbot.drawAt(700, 400, 3.0, 3.0);
    dariusbot.drawAt(450, 400);
    timbot.drawAt(50, 550, 1.5, 1.5);
    ethanbot.drawAt(150, 60, 0.75, 0.75);
    danbot.drawAt(550, 75, 0.75, 0.75);

    //creating Poe Dameron's speech bubble and text
    fill(255);
    ellipse(450, 750, 200, 150);
    fill(0);
    text("R2 has the rest of the map?", 350, 725, 190, 150);
    textAlign(CENTER);
    
    //creating BB8's speech bubble and text
    fill(255);
    ellipse(600, 600, 110, 60);
    fill(0);
    textAlign(CENTER);
    text("Bleep-blorp!", 550, 590, 100, 60);
    
  } else if (scene == 3) {
    
    DDRobot dariusbot = new DDRobot();
    SCRobot spencerbot = new SCRobot();
    EPRobot2 ethanbot2 = new EPRobot2();
    ASPRobot adambot = new ASPRobot();
    BDRobot benbot = new BDRobot();
    DHRobot danbot = new DHRobot();
    EPRobot ethanbot = new EPRobot();
    TMRobots timbot = new TMRobots();
    
    //drawing the characters for the scene
    spencerbot.drawAt(775, 550, 2.0, 2.0);
    dariusbot.drawAt(600, 625);
    timbot.drawAt(550, 775, 1.0, 1.0);
    ethanbot.drawAt(225, 700, 0.7, 0.7);
    danbot.drawAt(0, 700, 0.6, 0.6);
   
   //creating holographic map
   noStroke();
   fill(30, 130, 255, 180);
    rect(100, 100, 1000, 500);
    fill(30, 130, 255, 180);
    triangle(100, 600, 1100, 600, 1170, 825);
    rect(300, 250, 300, 200);
    triangle(300, 449, 600, 449, 935, 850);
  } else if(scene == 4){
    fill(255);
    text("The End", 500, 350);
    textAlign(CENTER);
    textSize(48);
  }
} 
void keyPressed() {
  if ( keyCode == ' ') {
    scene += 1;
  }
}