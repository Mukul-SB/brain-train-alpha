import 'package:brain_train_alpha/core/basic_features.dart';
import 'package:brain_train_alpha/core/utils/enum.dart';
import 'package:flutter/animation.dart';

class TowerOfHanoiController extends GetxController {
  final List<int> tower1 = [3, 2, 1];
  final List<int> tower2 = [];
  final List<int> tower3 = [];

  final CurrentHanoiDiskState currentHanoiDiskState =
      CurrentHanoiDiskState.neutral;

   HanoiDiskMove diskMove = HanoiDiskMove.none;

  late AnimationController? animationController;
  late Animation? animation;

  void moveDisk(int from, int to) {
    if (from == 1) {
      if (to == 2) {
        tower2.add(tower1.removeLast());
      } else {
        tower3.add(tower1.removeLast());
      }
    } else if (from == 2) {
      if (to == 1) {
        tower1.add(tower2.removeLast());
      } else {
        tower3.add(tower2.removeLast());
      }
    } else {
      if (to == 1) {
        tower1.add(tower3.removeLast());
      } else {
        tower2.add(tower3.removeLast());
      }
    }
    update();
  }

  double getDiskLeftValue(int i) {
    if (i == 2 && diskMove == HanoiDiskMove.halfRight) {
      return Dimensions.w30 -
          Dimensions.w15 * (3 - i + 1) / 2 +
          Dimensions.w10 +
          (animationController!.value * (Get.width / 2 - Dimensions.w60));
    }
    if (i == 2 && diskMove == HanoiDiskMove.fullRight) {
      return Dimensions.w30 -
          Dimensions.w15 * (3 - i + 1) / 2 +
          Dimensions.w10 +
          (animationController!.value * (Get.width - Dimensions.w120));
    } else {
      // Default Index 0 Value
      return Dimensions.w30 - Dimensions.w15 * (3 - i + 1) / 2 + Dimensions.w10;
    }
  }

  double getDiskBottomValue(int i) {
    if (i == 2 && diskMove == HanoiDiskMove.halfRight) {
      return i * Dimensions.h15 +
          (animationController!.value * Dimensions.h220);
    } else {
      return i * Dimensions.h15;
    }
  }
}
