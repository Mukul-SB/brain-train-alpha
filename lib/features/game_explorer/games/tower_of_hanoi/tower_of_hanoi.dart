import 'package:brain_train_alpha/core/basic_features.dart';
import 'package:brain_train_alpha/features/game_explorer/games/tower_of_hanoi/controllers/tower_of_hanoi_controller.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/enum.dart';

class TowerOfHanoi extends StatefulWidget {
  const TowerOfHanoi({super.key});

  @override
  State<TowerOfHanoi> createState() => _TowerOfHanoiState();
}

class _TowerOfHanoiState extends State<TowerOfHanoi>
    with SingleTickerProviderStateMixin {
  final TowerOfHanoiController controller = Get.put(TowerOfHanoiController());

  @override
  void initState() {
    super.initState();
    controller.animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    controller.animation =
        Tween(begin: 0.0, end: 1.0).animate(controller.animationController!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.hanoiBgColor,
      body: Padding(
        padding: EdgeInsets.all(Dimensions.commonPaddingForScreen),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Towers
                    for (int i = 0; i < 3; i++)
                      GestureDetector(
                        onTap: () {
                          if (i == 0) {
                            if (!controller.animationController!.isAnimating) {
                              controller.diskMove = HanoiDiskMove.upMove;
                              controller.animationController!.forward().then(
                                    (value) =>
                                        controller.animationController?.reset,
                                  );
                            }
                          } else if (i == 1) {
                          } else {
                            if (kDebugMode) {
                              if (!controller
                                  .animationController!.isAnimating) {
                                controller.animationController!.forward().then(
                                      (value) =>
                                          controller.animationController?.reset,
                                    );
                              }
                            }
                          }
                        },
                        child: Container(
                          color: Colors.white.withOpacity(0.05),
                          width: Dimensions.w80,
                          height: Dimensions.h216,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: Dimensions.h200,
                              width: Dimensions.w10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(Dimensions.r4),
                                  topRight: Radius.circular(Dimensions.r4),
                                ),
                                color: i == 2
                                    ? ColorConst.hanoiTextColor
                                    : ColorConst.woodColor,
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                ),

                // Disks
                for (int i = 0; i < 3; i++)
                  AnimatedBuilder(
                    animation: controller.animationController!,
                    builder: (context, child) => Positioned(
                      bottom: controller.getDiskBottomValue(i),
                      left: controller.getDiskLeftValue(i),
                      child: Container(
                        width: Dimensions.w15 * (3 - i + 1),
                        height: Dimensions.h15,
                        decoration: BoxDecoration(
                          color: ColorConst.hanoiDiskColors[i],
                          borderRadius: BorderRadius.circular(Dimensions.r5),
                        ),
                        child: Text(
                          "${3 - i}",
                          textAlign: TextAlign.center,
                          style: fontStyleSemiBold12.copyWith(
                              color: ColorConst.whiteColor.withOpacity(0.6)),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Container(
              height: Dimensions.h15,
              decoration: BoxDecoration(
                color: ColorConst.woodColor,
                borderRadius: BorderRadius.circular(Dimensions.r2),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.w35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < 3; i++)
                    Text(
                      i == 0
                          ? "A"
                          : i == 1
                              ? "B"
                              : "C",
                      style: fontStyleSemiBold18.copyWith(
                        color: i == 2
                            ? ColorConst.hanoiTextColor
                            : Colors.white.withOpacity(0.5),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
