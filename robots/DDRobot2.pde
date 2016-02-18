class DDRobot2 {
  
  void DDRobot2() {
  }
  
  void drawAt(int x, int y) {
    //ROBOT 2 (R2D2) Right
    noStroke();

    //distance between the 2 bots
    //default 300
    //

    float d = displayWidth/4.5;

    //Sketch Resolution Scaler
    //MASSIVE SCALING ISSUES
    //W.I.P

    float r = 1;

    //Scale of bots
    //scale(1 * r);

    //LightR2
    //LightR2

    fill(250);
    arc(x + 980-d, y+ 270, 185, 185, -PI, 0);  // upper half of circle

    fill(250);
    arc(x + 980-d, y+ 270, 185, 185, -PI, 0);  // upper half of circle


    //Lighting, robot bloom effects
    //slightly fiddly, blur broken between layers
    //(W.I.P)

    //R2shadow

    fill(#B7AA85);
    ellipse(x+ 700, y+ 550, 290, 80 );
    fill(#8B836C);
    ellipse(x+ 700, y+ 550, 260, 40 );

    fill(#746C55);
    ellipse(x+ 700, y+ 550, 240, 20 );

    fill(#393427);
    ellipse(x+ 700, y+ 545, 110, 10 );



    //Head
    fill(250);
    arc(x+ 980-d, y+ 270, 185, 185, -PI, 0);  // outer arc (lighter)
    fill(240);
    arc(x+ 980-d, y+ 270, 170, 170, -PI, 0);  // inner arc

    //legs
    fill(25);
    rect(x+ 850.5-d, y+ 295, 258, 30);
    fill(100);
    rect(x+860-d, y+ 280, 40, 70);
    fill(150);
    rect(x+870-d, y+ 280, 20, 250);
    fill(100);
    rect(x+1060-d, y+ 280, 40, 70);
    fill(150);
    rect(x+1070-d, y+ 280, 20, 250);
    fill(100);

    //feet
    fill(30);
    rect(x+867-d, y+ 510, 35, 35);
    rect(x+1057-d, y+ 510, 35, 35);
    fill(100);
    rect(x+860-d, y+ 500, 50, 40);
    rect(x+1050-d, y+ 500, 50, 40);


    //Body
    fill(250);
    rect(x+887.5-d, y+ 270, 185, 200);
    fill(240);
    rect(x+898-d, y+ 280, 165, 180);
    fill(100);
    arc(x+980-d, y+ 470, 175, 10, 0, PI, 0);
    fill(#0016A0);
    rect(x+887.5-d, y+ 270, 185, 5);
    fill(#0016A0);
    rect(x+908-d, y+ 290, 145, 160); 
    fill(240);
    rect(x+923-d, y+ 300, 115, 140);

    //Eye
    fill(#0016A0);
    ellipse(x+ 980-d, y+ 215, 55, 55);
    fill(0);
    ellipse(x+980-d, y+ 215, 45, 45);
    fill(120);

    //camera
    fill(#0016A0);
    ellipse(x+980-d, y+ 260, 15, 15);
    fill(0);
    ellipse(x+980-d, y+ 260, 10, 10);
    fill(120);

    //Reflection
    ellipse(x+970-d, y+ 210, 20, 15);
    fill(150);
    ellipse(x+970-d, y+ 209, 10, 5);
  }
}