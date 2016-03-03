
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

int textPositiony = 700;
int scene = 1;

void setup() {

  //create canvas
  size(1000, 700);
}

void draw() {

  //making the text slide down the page


  //always clear background
  background(50);

  if (scene == 1) {

    //declaring robots (not sure if I will use all of them, these are just my top picks)
    DDRobot dariusbot = new DDRobot();
    SCRobot spencerbot = new SCRobot();
    EPRobot2 ethanbot2 = new EPRobot2();
    ASPRobot adambot = new ASPRobot();
    BDRobot benbot = new BDRobot();
    DHRobot danbot = new DHRobot();
    EPRobot ethanbot = new EPRobot();

    int R2x = 850;
    int R2y = 325;

    filter(BLUR, 4);

    //background
    stroke(10);
    line(0, 500, 1500, 500);  //base of wall
    noStroke();
    fill(#629503);
    rect(100, 400, 300, 100); //boxes on floor
    noFill();
    stroke(0);
    rect(110, 410, 280, 80);
    fill(#629503);
    rect(600, 400, 300, 100); //boxes on floor
    stroke(0);
    rect(610, 410, 280, 80);
    noFill();
    rect(150, 100, 200, 250);
    rect(160, 110, 180, 230);
    rect(650, 100, 200, 250);
    rect(660, 110, 180, 230);

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

    //text at the bottom of screen describing scene
    fill(255);
    rect(0, 875, 1500, 50);
    fill(0);
    text("BB8 wakes up R2-D2 to find the missing part of the map", 650, 900);
  } else if (scene == 2) {

    //declaring robots (not sure if I will use all of them, these are just my top picks)
    DDRobot dariusbot = new DDRobot();
    SCRobot spencerbot = new SCRobot();
    EPRobot2 ethanbot2 = new EPRobot2();
    ASPRobot adambot = new ASPRobot();
    BDRobot benbot = new BDRobot();
    DHRobot danbot = new DHRobot();
    EPRobot ethanbot = new EPRobot();
    TMRobots timbot = new TMRobots();

    //creating the background
    stroke(0);
    line(0, 300, 1500, 300); //base of wall
    fill(100);
    rect(100, 150, 400, 150); //creating the screens on the wall
    fill(#BFF3FF);
    rect(120, 0, 360, 150); 
    fill(100);
    rect(600, 150, 400, 150); //creating screens on the wall
    fill(#BFF3FF);
    rect(620, 0, 360, 150);
    fill(255, 0, 0);
    ellipse(720, 180, 10, 10); //buttons on the screen
    ellipse(730, 180, 10, 10);
    ellipse(740, 180, 10, 10);
    fill(0, 255, 0);
    ellipse(720, 170, 10, 10); //buttons on the screen
    ellipse(730, 170, 10, 10);
    ellipse(740, 170, 10, 10);

    //drawing the robots in the scene
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

    //creating the scene description
    fill(255);
    rect(0, 875, 1500, 50);
    //textAlign(CENTER, CENTER);
    fill(0);
    text("BB8 tells Poe Dameron that R2-D2 has the rest of the map", 650, 900);
  } else if (scene == 3) {

    //declaring robots (not sure if I will use all of them, these are just my top picks)
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

    //creating the pathway through the map
    line(100, 100, 200, 300);
    stroke(6);
    line(200, 300, 300, 350);
    stroke(6);
    line(300, 350, 400, 400);
    stroke(10);

    //creating holographic map
    noStroke();
    fill(30, 130, 255, 180);
    rect(100, 100, 1000, 500);
    fill(30, 130, 255, 170);
    triangle(100, 600, 1100, 600, 1170, 825);
    rect(300, 250, 300, 200);
    triangle(300, 449, 600, 449, 935, 850);

    //creating the pathway through the map
    stroke(10);
    line(100, 100, 200, 300);
    line(200, 300, 300, 350);
    line(300, 350, 400, 400);
    line(400, 400, 500, 300);
    line(500, 300, 700, 250);
    line(700, 250, 800, 400);
    line(800, 400, 1000, 350);
    line(1000, 350, 1100, 450);

    //mark showing where Luke Skywalker is
    fill(255, 0, 0);
    ellipse(400, 400, 20, 20);

    //the scene description
    fill(255);
    rect(0, 875, 1500, 50);
    //textAlign(CENTER, CENTER);
    fill(0);
    text("BB8 and R2-D2 show the completed map to everyone", 650, 900);
  } else if (scene == 4) {

    //this is the scrolling text
    fill(#FFEC3B);
    rotateX(PI/8);
    text("The End", 500, textPositiony);
    textAlign(CENTER);
    textSize(48);
    textPositiony --;
  }
    if (scene == 5) {

  //void draw() {
  //line(mouseX, mouseY, 50, 50);
  //}
   exit(); 
   }
}

//this is the code to only let the space bar change the scene when pressed
void keyPressed() {
  if ( keyCode == ' ') {
    scene += 1;
  }
  }