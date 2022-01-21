import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  while (true) {
    print("Rock, paper or scissors? (r/p/s)");
    final s = stdin.readLineSync();

    if (s == 'r' || s == 'p' || s == 's') {
      var playerMove;
      if (s == 'r') {
        playerMove = Move.rock.name;
      } else if (s == 'p') {
        playerMove = Move.paper.name;
      } else if (s == 's') {
        playerMove = Move.scissors.name;
      }

      int random = Random().nextInt(3);
      var aiMove = Move.values[random].name;

      print("Player Chooses : $playerMove and AI Chooses : $aiMove");

      if (playerMove == aiMove) {
        print("It's a draw");
      } else if (playerMove == Move.rock.name && aiMove == Move.scissors.name ||
          playerMove == Move.paper.name && aiMove == Move.rock.name ||
          playerMove == Move.scissors.name && aiMove == Move.paper.name) {
        print("You win");
      } else {
        print("You lose");
      }
    } else if (s == 'q') {
      stdout.write("Game Compleed");
      break;
    } else {
      stdout.write("Invalid Input");
    }
  }
}
