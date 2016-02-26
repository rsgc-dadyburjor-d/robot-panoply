PImage bg; //bg call
PImage img;//image call
int scene = 1;//scene call

//various robot call

TMRobots timRobot = new TMRobots();
EPRobot ethanRobot = new EPRobot();
DHRobot danielRobot = new DHRobot();
BDRobot benRobot = new BDRobot();
DDRobot dariusRobot = new DDRobot();
JSSRobot smithRobot = new JSSRobot();
SCRobot spencerRobot = new SCRobot();

void setup() {
  //fullScreen(); //1280x800
  size(displayWidth, displayHeight);
}

void draw() {
noStroke();
  if (scene == 1) { //scene1
  
  //background
    bg = loadImage("Bg.JPG"); //scene 1 bg texture
    background(bg); //background

    //window

    fill(50);
    ellipse( displayWidth/2, displayHeight/2, 1200, 1200);
    fill(100);
    ellipse( displayWidth/2, displayHeight/2, 1050, 1050);
    fill(10);
    ellipse( displayWidth/2, displayHeight/2, 1000, 1000);

    //background Images

    img = loadImage("planet1.png"); //planet
    image(img, 100, 100);
    img = loadImage("Dstar.png");//deathstar
    image(img, 600, 100);
    img = loadImage("Tiefighters.gif");//tiefighters
    image(img, 550, -70);
    img = loadImage("Xwing.png");//console
    image(img, 100, 350);

    //Robots
//robot 1 scaling in DDRobot.pde
    rotate(.1);
    dariusRobot.drawAt(-180, 0); //robot1 

    //robot1 text
    fill(255);
    textSize(12);
    text("*beep*", 40, 140); 
    fill(0, 102, 153);
    text("*boop*", 40, 160);
    fill(0, 102, 153, 51);
    text("*beep*", 40, 180); 

    rotate(-.1); //reversal

    rotate(-.1); 
    spencerRobot.drawAt(540, 200, 3.5, 3.5); //robot2

    //robot2 text
    fill(255);
    textSize(12);
    text("*beep*", 750, 180); 
    fill(0, 102, 153);
    text("*boop*", 750, 200);
    fill(0, 102, 153, 51);
    text("*beep*", 750, 220);
    
  } else if (scene == 2) { //scene2
  
  //background
    bg = loadImage("Bg2.png");
    background(bg);
    text("scene2", 200, 200);
    
    //robots
    spencerRobot.drawAt(379, 404, 2.9, 2.9);
    benRobot.drawAt(759, 281, 0.4, 0.4);
    danielRobot.drawAt(666, 416, 0.2, 0.2);
    
  } else if (scene == 3) { //scene3
  noStroke();
  //background
    bg = loadImage("Bg3.jpg");
    background(bg);
    
    
  //robots
  timRobot.drawAt(540, 350, 1, 1.5); //robot 1
  spencerRobot.drawAt(200, 503,5,5);//robot2
 
   img = loadImage("hair.gif"); //robot2 hair
    image(img, 550, 306);
    
    
  
  }
}
void keyPressed() {
  scene += 1;
}