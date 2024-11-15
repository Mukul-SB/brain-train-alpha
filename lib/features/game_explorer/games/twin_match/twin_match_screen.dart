import 'package:brain_train_alpha/core/widgets/custom_image.dart';
import 'package:brain_train_alpha/features/game_explorer/games/twin_match/widgets/flip_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/basic_features.dart';
import 'controllers/twin_match_controller.dart';

class TwinMatchScreen extends StatelessWidget {
  TwinMatchScreen({super.key});

  final controller = Get.put(TwinMatchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.twinMatchBackgroundColor,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.1),
        itemCount: controller.listFlipCardController.length,
        itemBuilder: (context, index) {
          return FlipCard(
            controller: controller.listFlipCardController[index],
            frontContent: CustomAssetImage(
              image: index == 0 || index == 2
                  ? ImageAsset.tmMeowth
                  : index == 1 || index == 3
                      ? ImageAsset.tmPikachu
                      : ImageAsset.tmPsyduck,
            ),
            size: Dimensions.w60,
            backContent: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(Dimensions.r10)),
            ),
          );
        },
      ),
    );
  }
}
