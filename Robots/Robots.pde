void setup() {
  size(1000,700);
  DDRobot dariusRobot = new DDRobot();
  TMRobots timRobot = new TMRobots();
  int x = 120;
  int y = 30;
  int X = 1;
  int Y = 1;
  

  dariusRobot.drawAt(-350+2*x,-170+2*y);
  dariusRobot.drawAt(-350+3*x,-170+3*y);
  dariusRobot.drawAt(-350+4*x,-170+4*y);
  
  dariusRobot.drawAt(-350+5*x,-170+5*y);
  
  timRobot.drawAt(100,100,1*X,1*X);
  timRobot.drawAt(100,200,2*X,2*Y);
   
  
 // while (counter < 5){
    
    //print(
}
  