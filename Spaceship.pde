class Spaceship extends Floater
{   
   public Spaceship(){
     corners = 3;  
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
     myCenterX = 200;
     myCenterY = 200;
     myColor = 255;
     myDirectionX = myDirectionY = 0;
     myPointDirection = 1;
   }
   public void setDirectionX(double x){
     myDirectionX = x;
   }
   public void setDirectionY(double y){
     myDirectionY = y;
   }
   public void setPointDirection(double z){
    myPointDirection = z; 
   }
   public double getCenterX(){
     return myCenterX;
   }
   public double getCenterY(){
     return myCenterY;
   }
}
