class bullet extends Floater{
  int colors = 255;
 bullet(Spaceship ship){
   myCenterX = ship.getCenterX();
   myCenterY = ship.getCenterY();
   myPointDirection = ship.getPointDirection();
   myDirectionX = 5 * Math.cos(myPointDirection*(Math.PI/180)) + ship.getDirectionX();
   myDirectionY = 5 * Math.sin(myPointDirection*(Math.PI/180)) + ship.getDirectionY();
   
 }
 public void show(){
  fill(colors);
  ellipse((float)myCenterX,(float)myCenterY,5,5);
 }
 public double getBulletX(){
   return myCenterX;
 }
 public double getBulletY(){
   return myCenterY;
 }
 public void movez ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    
  }   
  
}
