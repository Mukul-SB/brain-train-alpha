import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:brain_train_alpha/core/utils/shimmer_screen.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/basic_features.dart';
import '../../../../core/widgets/custom_image.dart';
import 'controllers/twin_match_controller.dart';

class TwinMatchScreen extends StatelessWidget {
  final twinMatchController = Get.put(TwinMatchController());

  TwinMatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.blackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: GestureDetector(
          onTap: Get.back,
          child: Icon(
            Icons.arrow_back_ios,
            color: ColorConst.whiteColor,
          ),
        ),
        title: Text(
          'Twin Card Match',
          style: fontStyleRegular15.copyWith(color: ColorConst.whiteColor),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: ColorConst.whiteColor,
            ),
            tooltip: 'Reset Game',
            onPressed: twinMatchController.resetGame,
          ),
        ],
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            children: [
              // Loading Indicator OR Show cards
              twinMatchController.cards.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.commonPaddingForScreen +
                                  Dimensions.commonPaddingForScreen +
                                  Dimensions.commonPaddingForScreen +
                                  Dimensions.commonPaddingForScreen,
                              vertical: Dimensions.h18)
                          .copyWith(top: Dimensions.h120),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.1,
                          crossAxisSpacing: Dimensions.w10,
                          mainAxisSpacing: Dimensions.w10),
                      itemCount: twinMatchController.cards.length,
                      itemBuilder: (context, index) {
                        final card = twinMatchController.cards[index];
                        final flipCardController =
                            twinMatchController.flipCardControllers[index];

                        return twinMatchController.showCardsShimmer.value
                            ? ShimmerContainer(
                                width: 0,
                                height: 0,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.r10),
                                baseColor: Colors.white12,
                                highlightColor: Colors.transparent,
                              )
                            : FlipCard(
                                key: ValueKey('flipCard$index${card.content}'),
                                controller: flipCardController,
                                flipOnTouch: !card.isFlipped && !card.isMatched,
                                onFlip: () async =>
                                    await twinMatchController.flipCard(index),
                                front: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius:
                                        BorderRadius.circular(Dimensions.r10),
                                  ),
                                ),
                                back: Container(
                                  decoration: BoxDecoration(
                                    color: card.isMatched
                                        ? Colors.white12
                                        : Colors.transparent,
                                    borderRadius:
                                        BorderRadius.circular(Dimensions.r10),
                                  ),
                                  child: Center(
                                    child: CustomAssetImage(
                                      image: card.content,
                                    ),
                                  ),
                                ),
                              );
                      },
                    ),

              // Show match animation
              if (twinMatchController.showMatchAnimation.value)
                SizedBox(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ScaleAnimatedText(
                        'Matched!',
                        textStyle: TextStyle(
                            fontSize: 32, color: Colors.green.shade300),
                        scalingFactor: 5.0,
                        duration: 1200.milliseconds
                      ),
                    ],
                    repeatForever: false,
                    totalRepeatCount: 1,
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => Text(
            'Completed ${twinMatchController.completionPercentage}% | Time: ${twinMatchController.elapsedTime.value}s',
            textAlign: TextAlign.center,
            style: fontStyleSemiBold16.copyWith(color: ColorConst.whiteColor)),
      ),
    );
  }
}
