class Star //note that this class does NOT extend Floater
{
 private int myX,myY;
  Star(){
    myX = (int)(Math.random() * 1000);
    myY = (int)(Math.random() * 1000);
  }
  public void show(){
   ellipse(myX,myY,2,2); 
  }
}
