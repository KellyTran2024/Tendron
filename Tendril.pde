class Tendril {
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */

  public Tendril(int len, double theta, int x, int y) {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
   
  }

  public void show() {
    float startX = myX;
    float startY = myY;
     stroke(102,47,137); 
strokeWeight(2);

    for (int i = 0; i < myNumSegments; i++) {
      myAngle += random(-0.1, 0.1); 
      float endX = startX + cos((float) myAngle) * SEG_LENGTH;
      float endY = startY + sin((float) myAngle) * SEG_LENGTH; 
      if (myNumSegments < 2) {
        stroke(102,47,137); 
      } else if (myNumSegments < 4) {
        stroke(204,178,211); 
      } else {
        stroke(36,56,112); 
      }

     line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }

  if (myNumSegments > 1) { 
      Cluster c = new Cluster(myNumSegments/2, (int) startX,(int) startY);
  
      
    }
  }
}
