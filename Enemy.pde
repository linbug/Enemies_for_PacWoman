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

  float distance(float a, float b) {
    return abs(a - b);
  }

  boolean isWithinMoveDistance(float x, float y, float min) {
    return (x < min) && (y < min);
  }

  void moveIfRequired() {
    //if Pac is within a certain distance of enemy
    float xDist = distance(woman.circleX, squareX);
    float yDist = distance(woman.circleY, squareY);
    int minDist = 40;

    if (isWithinMoveDistance(xDist, yDist, minDist)) {
      move(xDist, yDist);
    }
  } 

  void move(float xDist, float yDist) {
    //make the enemy move towards Pac
    if (xDist > yDist) 
    {
//      squareX += (woman.circleX > squareX) ? 1 : -1;
      if (woman.circleX > squareX) {
        squareX++;
      } 
      else {
        squareX--;
      }
    } 
    else {
//      squareY += (woman.circleY > squareY) ? 1 : -1;
      if (woman.circleY > squareY) {
        squareY++;
      } 
      else {
        squareY--;
      }
    }
  }
}

