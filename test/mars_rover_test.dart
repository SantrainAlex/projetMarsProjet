import 'package:mars_rover/mars_rover.dart';
import 'package:mars_rover/modal/direction.dart';
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
  group("Test vers quel direction le rover regarde", () {
    test("Test vers quel direction le rover regarde (Nord)", () {
      Rover rover = Rover();
      rover.direction = Direction.Nord;
      expect(rover.direction, Direction.Nord);
    });
    test("Test vers quel direction le rover regarde (Est)", () {
      Rover rover = Rover();
      rover.direction = Direction.Est;
      expect(rover.direction, Direction.Est);
    });
    test("Test vers quel direction le rover regarde (Sud)", () {
      Rover rover = Rover();
      rover.direction = Direction.Sud;
      expect(rover.direction, Direction.Sud);
    });
    test("Test vers quel direction le rover regarde (Ouest)", () {
      Rover rover = Rover();
      rover.direction = Direction.Ouest;
      expect(rover.direction, Direction.Ouest);
    });
  });
  group("Deplacement du Rover", () {
    test("Test de l'axe Y (Avancer)", () {
      Rover rover = Rover();
      rover.direction = Direction.Nord;
      expect(rover.deplacementY(1), 1);
      expect(rover.positionX, 0);
    });
    test("Test de l'axe Y (Reculer)", () {
      Rover rover = Rover();
      rover.direction = Direction.Sud;
      expect(rover.deplacementY(1), 10);
      expect(rover.positionX, 0);
    });

    test("Test de l'axe X (Avancer)", () {
      Rover rover = Rover();
      rover.direction = Direction.Est;
      expect(rover.deplacementX(1), 1);
      expect(rover.positionY, 0);
    });
    test("Test de l'axe X (Reculer)", () {
      Rover rover = Rover();
      rover.direction = Direction.Ouest;
      expect(rover.deplacementX(1), 10);
      expect(rover.positionY, 0);
    });
  });
}
