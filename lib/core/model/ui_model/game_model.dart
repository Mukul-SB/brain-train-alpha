import 'package:flutter/cupertino.dart';

class GameModel {
  final String name;
  final Widget gameScreen;
  final Color tileColor;

  GameModel({
    required this.gameScreen,
    required this.name,
    required this.tileColor,
  });
}
