import 'package:brain_train_alpha/core/model/ui_model/game_model.dart';
import 'package:brain_train_alpha/features/game_explorer/games/twin_match/twin_match_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class GameExplorerController extends GetxController {
  final games = [
    GameModel(
        name: 'Twin Match',
        gameScreen: TwinMatchScreen(),
        tileColor: Colors.green.shade50),
    GameModel(
        name: 'Tower of Hanoi',
        gameScreen: TwinMatchScreen(),
        tileColor: Colors.blue.shade50),
  ];
}
