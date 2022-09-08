class Rover {
  int positionX;
  int positionY;
  final int maxX;
  final int maxY;

  Rover(
      {this.positionX = 0, this.positionY = 0, this.maxX = 10, this.maxY = 10});

  int deplacementY(int value) {
    positionY = positionY + (value);
    return positionY;
  }

  int deplacementX(int value) {
    positionX = positionX + (value);
    return positionX;
  }
}
