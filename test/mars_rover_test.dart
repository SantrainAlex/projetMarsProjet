import 'package:mars_rover/mars_rover.dart';
import 'package:mars_rover/modal/rover.dart';
import 'package:test/test.dart';

void main() {
  group("Initialisation du Rover", () {
    test("Test de la position X et Y", () {
      Rover rover = Rover();

      expect(rover.positionX, 0);
      expect(rover.positionY, 0);
    });

    test("Test de la valeur max de X et Y", () {
      Rover rover = Rover();

      expect(rover.maxX, 10);
      expect(rover.maxY, 10);
    });
  });

  group("Deplacement du Rover", () {
    test("Test de l'axe Y (Avancer)", () {
      Rover rover = Rover();

      expect(rover.deplacementY(1), 1);
      expect(rover.positionX, 0);
    });
    test("Test de l'axe Y (Reculer)", () {
      Rover rover = Rover();

      expect(rover.deplacementY(-1), -1);
      expect(rover.positionX, 0);
    });

    test("Test de l'axe X (Avancer)", () {
      Rover rover = Rover();

      expect(rover.deplacementX(1), 1);
      expect(rover.positionY, 0);
    });
    test("Test de l'axe X (Reculer)", () {
      Rover rover = Rover();

      expect(rover.deplacementX(-1), -1);
      expect(rover.positionY, 0);
    });
  });
}
