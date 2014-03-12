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

    if (((woman.circleX-squareX)*(woman.circleX-squareX))<4||(woman.circleY-squareY)*(woman.circleY-squareY)<4) {

      //make the enemy move towards Pac
      if ((woman.circleX-squareX)*(woman.circleX-squareX)>(woman.circleY-squareY)*(woman.circleY-squareY)) 
      {
        if ((woman.circleX)>(squareX)) {
          squareX++;
        } 
        else {
          squareX--;
        }
      } 
      else {
        if ((woman.circleY)>(squareY)) {
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

