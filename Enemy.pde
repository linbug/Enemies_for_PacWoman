class Enemy {
  int squareWidth = 10;
  float squareX, 
  squareY;

  Enemy (float x, float y) {
    squareX = x;
    squareY = y;
  } 

  void display() {
    fill(255);
    rect (squareX, squareY, squareWidth, squareWidth);
  }

  void move() {
    //if Pac is within a certain distance of enemy
    float xDist = abs(woman.circleX-squareX), 
    yDist = abs(woman.circleY-squareY);
    int minDist = 4;

    if (xDist < minDist || yDist < minDist) {

      //make the enemy move towards Pac
      if (xDist > yDist) 
      {
        if (woman.circleX > squareX) {
          squareX++;
        } 
        else {
          squareX--;
        }
      } 
      else {
        if (woman.circleY > squareY) {
          squareY++;
        } 
        else {
          squareY--;
        }
      }
    } 

    /*void patrolling() {
     }*/
  }
}

