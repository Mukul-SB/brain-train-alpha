import 'package:brain_train_alpha/core/model/ui_model/game_model.dart';
import 'package:brain_train_alpha/features/game_explorer/games/twin_match/twin_match_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/basic_features.dart';

class GameExplorerController extends GetxController {
  late final games = [
    GameModel(
        name: 'Twin Match',
        navigateToGameScreen: () => Get.to(() => TwinMatchScreen()),
        tileColor: Colors.green.shade50),
    GameModel(
        name: 'Tower of Hanoi',
        navigateToGameScreen: () => Get.to(() => TwinMatchScreen()),
        tileColor: Colors.blue.shade50),
    GameModel(
        name: 'GTA 6',
        navigateToGameScreen: () => Get.to(() => TwinMatchScreen()),
        tileColor: Colors.orange.shade100),
    GameModel(
        name: 'Red Dead Redemption 2',
        navigateToGameScreen: () => Get.to(() => TwinMatchScreen()),
        tileColor: Colors.red.shade100),
    GameModel(
        name: 'Resident Evil 8',
        navigateToGameScreen: () => Get.to(() => TwinMatchScreen()),
        tileColor: Colors.brown.shade100),
    GameModel(
        name: 'Super Mario Bros',
        navigateToGameScreen: () => Get.to(() => TwinMatchScreen()),
        tileColor: Colors.blue.shade100),
    GameModel(
        name: 'Max Payne 3',
        navigateToGameScreen: () => Get.to(() => TwinMatchScreen()),
        tileColor: Colors.grey.shade100),
    GameModel(
        name: 'Marvel\'s Spider-Man',
        navigateToGameScreen: () => Get.to(() => TwinMatchScreen()),
        tileColor: Colors.redAccent.shade100),
  ];
}
