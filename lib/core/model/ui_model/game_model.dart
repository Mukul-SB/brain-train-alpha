import 'package:flutter/cupertino.dart';

class GameModel {
  final String name;
  final VoidCallback navigateToGameScreen;
  final Color tileColor;

  GameModel({
    required this.navigateToGameScreen,
    required this.name,
    required this.tileColor,
  });
}
