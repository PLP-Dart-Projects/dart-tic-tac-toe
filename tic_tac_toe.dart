/*
  
  * | * | *
  * | * | *
  * | * | *
  
*/
import 'dart:io';

void main() {
  String player = "X";
  var gameDashboard = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];
  displayDashboard(gameDashboard);
  play(gameDashboard, player);
}

// play
void play(List gameDashboard, String player) {
  print('Player $player select the row (0-2)');
  var row = int.parse(stdin.readLineSync()!);
  print('Player $player select the col (0-2)');
  var col = int.parse(stdin.readLineSync()!);
  gameDashboard[row][col] = player;
  checkWinner(gameDashboard, player);
}

// check winner
void checkWinner(List gameDashboard, String player) {
  displayDashboard(gameDashboard);
  if (gameDashboard[0][0] == gameDashboard[0][1] &&
      gameDashboard[0][1] == gameDashboard[0][2] && gameDashboard[0][0].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[1][0] == gameDashboard[1][1] &&
      gameDashboard[1][1] == gameDashboard[1][2] && gameDashboard[1][0].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[2][0] == gameDashboard[2][1] &&
      gameDashboard[2][1] == gameDashboard[2][2] && gameDashboard[2][0].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[0][0] == gameDashboard[1][0] &&
      gameDashboard[1][0] == gameDashboard[2][0] && gameDashboard[0][0].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[0][1] == gameDashboard[1][1] &&
      gameDashboard[1][1] == gameDashboard[2][1] && gameDashboard[0][1].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[0][2] == gameDashboard[1][2] &&
      gameDashboard[1][2] == gameDashboard[2][2] && gameDashboard[0][2].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[0][2] == gameDashboard[1][1] &&
      gameDashboard[1][1] == gameDashboard[2][0] && gameDashboard[0][2].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[0][0] == gameDashboard[1][1] &&
      gameDashboard[1][1] == gameDashboard[2][2] && gameDashboard[0][0].toString().isNotEmpty) {
    displayWinner(player);
  } else {
    if (player == "X") {
      player = "O";
    } else {
      player = "X";
    }
    play(gameDashboard, player);
  }
}

// Display dashboard
void displayDashboard(List gameDashboard) {
  print(
      ' ${gameDashboard[0][0]}  |  ${gameDashboard[0][1]} | ${gameDashboard[0][2]} ');
  print('---+---+---');
  print(
      ' ${gameDashboard[1][0]}  |  ${gameDashboard[1][1]} | ${gameDashboard[1][2]} ');
    print('---+---+---');
  print(
      ' ${gameDashboard[2][0]}  |  ${gameDashboard[2][1]} | ${gameDashboard[2][2]} ');
}

// display winner
void displayWinner(String player) {
  print("Player $player is the winner");
}
