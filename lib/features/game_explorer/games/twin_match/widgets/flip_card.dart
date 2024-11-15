import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'flip_card_controller.dart';

class FlipCard extends StatelessWidget {
  final Widget frontContent;
  final double size;
  final Widget backContent;
  final FlipCardController controller;

  const FlipCard(
      {super.key,
      required this.controller,
      required this.frontContent,
      required this.backContent,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.flip,
      child: Obx(() {
        return AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          transitionBuilder: (child, animation) {
            return RotationYTransition(
              turns: animation,
              child: child,
            );
          },
          child: controller.isFlipped.value
              ? SizedBox(
                  width: size,
                  height: size,
                  key: ValueKey('back'),
                  child: backContent,
                )
              : SizedBox(
                  width: size,
                  height: size,
                  key: ValueKey('front'),
                  child: frontContent,
                ),
        );
      }),
    );
  }
}

class RotationYTransition extends AnimatedWidget {
  const RotationYTransition(
      {super.key, required Animation<double> turns, required this.child})
      : super(listenable: turns);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    final Matrix4 transform = Matrix4.identity()
      ..rotateY(animation.value * 3.1416); // Rotate Y axis

    return Transform(
      transform: transform,
      alignment: Alignment.center,
      child: child,
    );
  }
}
