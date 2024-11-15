import 'package:flutter/material.dart';
import 'package:brain_train_alpha/core/utils/shimmer_effect.dart';
import 'package:flutter_svg/svg.dart';

import '../basic_features.dart';

class ShimmerDiscoverTabScreen extends StatelessWidget {
  const ShimmerDiscoverTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimensions.w15,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: ColorConst.shimmerBaseColor,
                  highlightColor: ColorConst.shimmerHighLightColor,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: Dimensions.w10,
                      right: Dimensions.w10,
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: Dimensions.h45,
                                width: Dimensions.h45,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            SizedBox(
                              width: Dimensions.h10,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: Dimensions.w130,
                                    height: Dimensions.h13,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(3),
                                    )),
                                SizedBox(
                                  height: Dimensions.h3,
                                ),
                                Container(
                                    width: Dimensions.w180,
                                    height: Dimensions.h13,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(3),
                                    )),
                                SizedBox(
                                  height: Dimensions.h3,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider()
                      ],
                    ),
                  ),
                );
              },
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(
                left: Dimensions.w5,
                right: Dimensions.w5,
              ),
              itemCount: 10,
            )
          ],
        ),
      ),
    );
  }
}

class ShimmerNotificationScreen extends StatelessWidget {
  const ShimmerNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return formUI();
  }

  formUI() {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimensions.w15,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: ColorConst.shimmerBaseColor,
                  highlightColor: ColorConst.shimmerHighLightColor,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: Dimensions.w10,
                      right: Dimensions.w10,
                      top: Dimensions.w8,
                      bottom: Dimensions.w8,
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: Dimensions.w275,
                                    height: Dimensions.h13,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(3),
                                    )),
                                SizedBox(
                                  height: Dimensions.h3,
                                ),
                                Container(
                                    width: Dimensions.w248,
                                    height: Dimensions.h13,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(3),
                                    )),
                                SizedBox(
                                  height: Dimensions.h6,
                                ),
                                // Date Shimmer
                                Container(
                                    width: Dimensions.w80,
                                    height: Dimensions.h10,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(3),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        const Divider()
                      ],
                    ),
                  ),
                );
              },
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(
                left: Dimensions.w5,
                right: Dimensions.w5,
              ),
              itemCount: 10,
            )
          ],
        ),
      ),
    );
  }
}

class ShimmerContainer extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? baseColor;
  final bool showTrailing;
  final Color? highlightColor;

  const ShimmerContainer(
      {super.key,
      required this.width,
      required this.height,
      this.borderRadius,
      this.showTrailing = false,
      this.margin = EdgeInsets.zero,
      this.padding = EdgeInsets.zero,
      this.baseColor,
      this.highlightColor});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? ColorConst.shimmerBaseColor,
      highlightColor: highlightColor ?? ColorConst.shimmerHighLightColor,
      child: Container(
          margin: margin,
          padding: padding,
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius:
                  borderRadius ?? BorderRadius.circular(Dimensions.r8)),
          child: showTrailing
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      const SizedBox(),
                      Padding(
                          padding: EdgeInsets.only(right: Dimensions.w25),
                          child: CircleAvatar(
                            radius: Dimensions.r15,
                          ))
                    ])
              : const SizedBox()),
    );
  }
}
