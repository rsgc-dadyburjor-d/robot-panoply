
PImage bg; //bg call
PImage img;//image call
int scene = 0;//scene call
int scale = 60;
int scale2 = 0;
PFont font;
boolean pixelMode = true;

//robot calls

TMRobots timRobot = new TMRobots();
EPRobot ethanRobot = new EPRobot();
DHRobot danielRobot = new DHRobot();
BDRobot benRobot = new BDRobot();
DDRobot dariusRobot = new DDRobot();
JSSRobot smithRobot = new JSSRobot();
SCRobot spencerRobot = new SCRobot();

void setup() {
  textMode(CENTER);
  frameRate(6990);
  //fullScreen(); //1280x800
  size(displayWidth, displayHeight);
  noStroke();
  font = createFont("galaxy.ttf", 32);
  noCursor();
}

void draw() {

    
  if (scene == 0) { //scene0
  // Load a soundfile from the /data folder of the sketch and play it back
  

  scale ++;
    bg = loadImage("endb.jpg");
    background(bg);
    img = loadImage("logo.png"); //scene1 bg texture
  imageMode(CENTER);
    img.resize(40500 / scale  , 40500 / scale );
    image(img, displayWidth/2, displayHeight/2);
    imageMode(CORNER);
    
  } else if (scene == 1) {
    scale ++;
    //background
    bg = loadImage("Bg.JPG"); //scene1 bg texture
    background(bg); //background

    //window
    fill(50);
    ellipse( displayWidth/2, displayHeight/2, 1200, 1200);
    fill(100);
    ellipse( displayWidth/2, displayHeight/2, 1050, 1050);
    fill(10);
    ellipse( displayWidth/2, displayHeight/2, 1000, 1000);

    //background Images
    imageMode(CENTER);
    img = loadImage("planet1.png"); //planet
    img.resize(80500 / scale/2 , 80500 / scale/2);
    image(img, 500, 400);
    img = loadImage("Dstar.png");//deathstar
    img.resize(20500 / scale  , 20500 / scale );
    image(img, 700 , 300 );
    img = loadImage("Tiefighters.gif");//tiefighters
    img.resize(10500 / scale  , 10500 / scale );
    image(img, 750, -70);
    imageMode(CORNER);
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
    rotate(.2);
     
    
  } else if (scene == 2) { //scene2

    //background
    bg = loadImage("Bg2.png");
    background(bg);
    text("scene2", 200, 200);

    //robots
    spencerRobot.drawAt(379, 404, 2.9, 2.9);
    benRobot.drawAt(759, 281, 0.4, 0.4);
    danielRobot.drawAt(666, 416, 0.2, 0.2);
 img = loadImage("logo.png"); //scene1 bg texture
  imageMode(CENTER);
    img.resize(10500 / scale  , 10500 / scale );
    image(img, 100, 700); 
} else if (scene == 3) { //scene3
    noStroke();
    //background
    bg = loadImage("Bg3.jpg");
    background(bg);

    //robots
    timRobot.drawAt(540, 350, 1, 1.5); //robot 1
    spencerRobot.drawAt(200, 503, 5, 5);//robot2
    
    img = loadImage("hair.gif"); //robot2 hair
    image(img, 550, 306);
    img = loadImage("logo.png"); //scene1 bg texture
  imageMode(CENTER);
    img.resize(10500 / scale  , 10500 / scale );
    image(img, 100, 700); 
    
  } else if (scene == 4) { //scene4
scale2 ++;
  
    bg = loadImage("endb.jpg");
    background(bg);
    imageMode(CENTER);
    img = loadImage("end.png"); 
    img.resize(4000 / scale2 , 3400 / scale2);
    image(img, displayWidth/2, displayHeight/2);
    imageMode(CORNER);
    
    
  }
 
}

void keyPressed() { //advances scene on keypress
  scene += 1;
}