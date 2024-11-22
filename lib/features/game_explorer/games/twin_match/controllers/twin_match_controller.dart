import 'dart:async';

import 'package:brain_train_alpha/core/basic_features.dart';
import 'package:brain_train_alpha/core/utils/logger_util.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/model/ui_model/twin_card_model.dart';

class TwinMatchController extends GetxController {
  final showCardsShimmer = false.obs; // Show shimmer effect

  // Reactive list of cards
  RxList<TwinCardModel> cards = <TwinCardModel>[].obs;
  final elapsedTime = 0.obs; // Track elapsed seconds
  late Timer timer; // Timer instance

  // List of FlipCard controllers (one for each card)
  List<FlipCardController> flipCardControllers = [];

  // Track the first and second flipped cards
  TwinCardModel? firstSelectedCard;
  TwinCardModel? secondSelectedCard;

  // Flag to prevent user interaction during processing
  bool isProcessing = false;

  // Getter for completion percentage
  int get completionPercentage {
    if (cards.isEmpty) return 0;
    final matchedCards = cards.where((card) => card.isMatched).length;
    return ((matchedCards / cards.length) * 100).toInt();
  }

  @override
  void onInit() {
    super.onInit();
    logger.i("Initializing the game.");
    initializeGame();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      elapsedTime.value++;
    });
  }

  void stopTimer() {
    timer.cancel();
  }

  Future<void> initializeGame({bool isReset = false}) async {
    if (isReset) {
      await resetAllCards();
    }

    isProcessing = true;

    // Prepare card contents and shuffle them
    final cardContents = [
      ImageAsset.tmPikachu,
      ImageAsset.tmMeowth,
      ImageAsset.tmPsyduck,
    ];

    final allCards = [
      ...cardContents.map((e) => TwinCardModel(id: e.hashCode, content: e)),
      ...cardContents.map((e) => TwinCardModel(id: e.hashCode, content: e)),
    ];

    allCards.shuffle();
    cards.assignAll(allCards);

    // Initialize FlipCard controllers
    flipCardControllers =
        List.generate(allCards.length, (_) => FlipCardController());

    // Show all cards briefly to the user, then hide them
    logger.i("Revealing all cards briefly.");
    WidgetsBinding.instance.addPostFrameCallback((_) => showAllCards());
    await Future.delayed(Duration(seconds: 1));
    hideAllCards();

    isProcessing = false;
    logger.i("Game initialized with shuffled cards.");
  }

  Future<void> resetAllCards() async {
    logger.i("Resetting all cards with shimmer.");
    showCardsShimmer.value = true;
    cards.refresh();

    // Ensure all cards are visible first
    for (int i = 0; i < cards.length; i++) {
      if (!cards[i].isFlipped) {
        flipCardControllers[i].toggleCard();
        cards[i].isFlipped = true;
      }
    }
    await Future.delayed(Duration(seconds: 1)); // Wait for cards to show

    showCardsShimmer.value = false;
    logger.i("All cards reset and hidden.");
  }

  void showAllCards() {
    for (int i = 0; i < cards.length; i++) {
      if (!cards[i].isFlipped) {
        flipCardControllers[i].toggleCard();
        cards[i].isFlipped = true;
      }
    }
    logger.i("All cards revealed.");
  }

  void hideAllCards() {
    for (int i = 0; i < cards.length; i++) {
      if (cards[i].isFlipped) {
        flipCardControllers[i].toggleCard();
        cards[i].isFlipped = false;
      }
    }

    logger.i("All cards hidden.");
  }

  Future<void> flipCard(int index) async {
    if (isProcessing || cards[index].isFlipped || cards[index].isMatched) {
      logger.w(
          "Card flip ignored: index $index, isProcessing=$isProcessing, isFlipped=${cards[index].isFlipped}, isMatched=${cards[index].isMatched}.");
      return;
    }

    isProcessing = true;

    final selectedCard = cards[index];
    selectedCard.isFlipped = true;
    flipCardControllers[index].toggleCard();

    logger.i("Card flipped: index $index, content=${selectedCard.content}.");

    if (firstSelectedCard == null) {
      firstSelectedCard = selectedCard;
      logger.i("First card selected: index $index.");
    } else if (secondSelectedCard == null) {
      secondSelectedCard = selectedCard;
      logger.i("Second card selected: index $index.");
      await checkMatch();
    }

    cards.refresh();
    isProcessing = false;
  }

  final showMatchAnimation = false.obs;

  Future<void> checkMatch() async {
    if (firstSelectedCard == null || secondSelectedCard == null) return;

    int firstIndex = cards.indexOf(firstSelectedCard!);
    int secondIndex = cards.indexOf(secondSelectedCard!);

    logger.i(
        "Checking match for: ${firstSelectedCard!.content} and ${secondSelectedCard!.content}.");

    if (firstSelectedCard!.content == secondSelectedCard!.content) {
      // Match found: Mark cards as matched
      cards[firstIndex].isMatched = true;
      cards[secondIndex].isMatched = true;

      logger.i("Cards matched! Indices: $firstIndex, $secondIndex.");

      // Reset selection
      firstSelectedCard = null;
      secondSelectedCard = null;

      cards.refresh(); // Notify UI

      logger.i("Cards matched! Showing animation.");

      // Check for game completion
      if (cards.every((card) => card.isMatched)) {
        stopTimer();
        Future.delayed(Duration(milliseconds: 500), () => showWinDialog());
      }

      showMatchAnimation.value = true;
      await Future.delayed(Duration(seconds: 1));
      showMatchAnimation.value = false;
    } else {
      // Mismatch: Flip cards back
      logger.w("Cards did not match. Flipping back.");

      // Add a slight delay before flipping cards back
      await Future.delayed(Duration(milliseconds: 500));

      // Flip cards back only if still flipped
      if (cards[firstIndex].isFlipped) {
        cards[firstIndex].isFlipped = false; // Update state
        flipCardControllers[firstIndex].toggleCard(); // Trigger visual flip
      }

      await Future.delayed(Duration(milliseconds: 40));

      if (cards[secondIndex].isFlipped) {
        cards[secondIndex].isFlipped = false; // Update state
        flipCardControllers[secondIndex].toggleCard(); // Trigger visual flip
      }

      logger
          .i("Both cards flipped back: indices $firstIndex and $secondIndex.");
    }

    // Reset selection
    firstSelectedCard = null;
    secondSelectedCard = null;

    isProcessing = false;

    // Notify UI of state changes
    cards.refresh();
  }

  void resetGame() async {
    logger.i("Resetting the game.");
    isProcessing = true;

    // Stop the timer and reset the game state
    stopTimer();
    elapsedTime.value = 0;
    firstSelectedCard = null;
    secondSelectedCard = null;

    initializeGame(isReset: true);
    startTimer();

    AppUtils.showToast('Game has been reset!', toastLength: Toast.LENGTH_SHORT);
    isProcessing = false;
  }

  void showWinDialog() {
    logger.i("Game completed. Showing win dialog.");
    Get.defaultDialog(
      title: 'Congratulations!',
      backgroundColor: ColorConst.twinMatchDialogBackgroundColor,
      // backgroundColor: Colors.white54,
      titleStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: ColorConst.whiteColor),
      content: Column(
        children: [
          Icon(Icons.emoji_events, size: 100, color: Colors.yellow),
          Text('You completed the game!',
              style: TextStyle(
                fontSize: 20,
                color: ColorConst.whiteColor,
              )),
          Text('Completion: $completionPercentage%',
              style: TextStyle(fontSize: 16, color: ColorConst.whiteColor)),
          Text('Time: ${elapsedTime.value} seconds',
              style: TextStyle(fontSize: 16, color: ColorConst.whiteColor)),
        ],
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConst.whiteColor,
          ),
          onPressed: () {
            Get.back();
            resetGame();
          },
          child: Text('Play Again', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }

  @override
  void onClose() {
    logger.i("Cleaning up resources.");
    timer.cancel(); // Ensure timer is cleaned up
    super.onClose();
  }
}
