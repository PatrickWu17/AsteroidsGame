Spaceship ship = new Spaceship();
Star[] bruh = new Star[400];
ArrayList <Asteroid> rocks = new ArrayList<Asteroid>();
ArrayList <bullet> joe = new ArrayList<bullet>();
boolean dPressed = false;
boolean aPressed = false;
boolean wPressed = false;
boolean sPressed = false;
boolean ePressed = false;
boolean spacePressed = false;

public void setup() 
{
  size(1000,1000);
  for(int i = 0; i < bruh.length; i++){
   bruh[i] = new Star();
  }
  for(int i = 0; i < 50; i++){
    rocks.add(new Asteroid());
  }
  
}
public void draw() 
{
  background(0);
  ship.show();
  ship.move();
  for(int i  = 0; i < joe.size(); i++){
   joe.get(i).show();
   joe.get(i).movez();  
   if(joe.get(i).getBulletX() > width || joe.get(i).getBulletX() < 0 || joe.get(i).getBulletY() > height || joe.get(i).getBulletX() < 0){
    joe.remove(i); 
   }
   /*if(joe.get(i).getBulletX() > width)
    {     
      joe.remove(i);
      break;
    }    
    else if (joe.get(i).getBulletX() < 0)
    {     
     joe.remove(i);
     break;
    }    
    if(joe.get(i).getBulletY() > height)
    {    
      joe.remove(i);
      break;
    } 
    
    else if (joe.get(i).getBulletY() < 0) 
    {     
      joe.remove(i);
      break;
    } */
  }
  color(127);
  for(int i = 0; i < bruh.length; i++){
  bruh[i].show(); 
  } 
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    if(dist((float)ship.getCenterX(), (float)ship.getCenterY(), (float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY()) < 20){
      rocks.remove(i); 
    }
    for(int g = 0; g < joe.size(); g++){
     if(dist((float)rocks.get(i).getCenterX(),(float)rocks.get(i).getCenterY(),(float)joe.get(g).getBulletX(),(float)joe.get(g).getBulletY()) < 20){
       rocks.remove(i);  
       break;
     }
    }
    
  }
  if(dPressed == true){
  ship.turn(10); 
  }
  if(aPressed == true){
   ship.turn(-10); 
  }
  if(wPressed == true){
    ship.accelerate(0.05);
  }
  if(sPressed == true){
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  }
  if(ePressed == true){
   ship.setDirectionX(0);
   ship.setDirectionY(0);
   ship.myPointDirection = (int)(Math.random() * 360);
   ship.myCenterX = Math.random() * 1000;
   ship.myCenterY = Math.random() * 1000;
 }
 if(spacePressed == true){
   joe.add(new bullet(ship));
 }
}
public void keyPressed(){
 if(key == 'd'){
  dPressed = true;
 }else if(key == 'a'){
  aPressed = true; 
 } else if(key == 'w'){
   wPressed = true;
 }else if(key == 's'){
   sPressed = true;
 }else if(key == 'e'){
   ePressed = true;
 }else if(key == ' '){
   spacePressed = true;
 }
}
void keyReleased(){
  if(key == 'd'){
  dPressed = false;
 }else if(key == 'a'){
  aPressed = false; 
 }else if(key == 'w'){
   wPressed = false;
 }else if(key == 's'){
   sPressed = false;
 }else if(key == 'e'){
   ePressed = false;
 }else if(key == ' '){
   spacePressed = false;
 }
}
