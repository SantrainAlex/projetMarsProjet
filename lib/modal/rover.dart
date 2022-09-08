import 'direction.dart';

class Rover {
  int positionX;
  int positionY;
  final int maxX;
  final int maxY;
  Direction direction;

  Rover(
      {this.positionX = 0,
      this.positionY = 0,
      this.maxX = 10,
      this.maxY = 10,
      this.direction = Direction.Nord});

  int deplacementY(int value) {
    if (direction == Direction.Nord) {
      if ((positionY + value) > 10) {
        int x = positionY + value;
        positionY = (x % maxY) - 1;
        return positionY;
      } else {
        positionY = positionY + value;
        return positionY;
      }
    } else if (direction == Direction.Sud) {
      if ((positionY - value) < 0) {
        int x = positionY - value;
        positionY = (x % maxY) + 1;
        return positionY;
      } else {
        positionY = positionY - value;
        return positionY;
      }
    }
    return 0;
  }

  int deplacementX(int value) {
    if (direction == Direction.Est) {
      if ((positionX + value) > 10) {
        int x = positionX + value;
        positionX = (x % maxX) - 1;
        return positionX;
      } else {
        positionX = positionX + value;
        return positionX;
      }
    } else if (direction == Direction.Ouest) {
      if ((positionX - value) < 0) {
        int x = positionX - value;
        positionX = (x % maxX) + 1;
        return positionX;
      } else {
        positionX = positionX - value;
        return positionX;
      }
    }
    return 0;
  }
}
