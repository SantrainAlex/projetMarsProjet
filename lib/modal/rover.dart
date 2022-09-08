import 'dart:ffi';

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
    if (this.direction == Direction.Nord) {
      positionY = positionY + value;
      return positionY;
    } else if (this.direction == Direction.Sud) {
      positionY = positionY - value;
      return positionY;
    }
    return 0;
  }

  int deplacementX(int value) {
    if (this.direction == Direction.Est) {
      positionX = positionX + value;
      return positionX;
    } else if (this.direction == Direction.Ouest) {
      positionX = positionX - value;
      return positionX;
    }
    return 0;
  }

  move(Direction direction) {
    this.direction = direction;
  }
}
