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

class ShimmerSettingsDashboard extends StatelessWidget {
  const ShimmerSettingsDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return formUI();
  }

  formUI() {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: Dimensions.w15,
          // ),
          Shimmer.fromColors(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: Dimensions.w55,
                              height: Dimensions.h10,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(9),
                              )),
                          SizedBox(
                            height: Dimensions.h3,
                          ),
                          Container(
                              width: Dimensions.w20,
                              height: Dimensions.h9,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(9),
                              )),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: Dimensions.h50),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: Dimensions.w80,
                                height: Dimensions.h10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9),
                                )),
                            SizedBox(
                              height: Dimensions.h3,
                            ),
                            Container(
                                width: Dimensions.w35,
                                height: Dimensions.h9,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // First Row
                      Container(
                        width: Dimensions.w50,
                        height: Dimensions.w50,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          width: Dimensions.w40,
                          height: Dimensions.w40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.w10,
                      ),

                      // Second Column
                      Padding(
                        padding: EdgeInsets.only(right: Dimensions.h50),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: Dimensions.w180,
                                height: Dimensions.h10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9),
                                )),
                            SizedBox(
                              height: Dimensions.h6,
                            ),
                            Container(
                                width: Dimensions.w130,
                                height: Dimensions.h9,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ShimmerSettingRatingContainer extends StatelessWidget {
  const ShimmerSettingRatingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return formUI();
  }

  formUI() {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: ColorConst.shimmerBaseColor,
              highlightColor: ColorConst.shimmerHighLightColor,
              child: Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.w20,
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
                            SizedBox(
                              height: Dimensions.h8,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: Dimensions.h14),
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
                          ],
                        ),
                      ],
                    ),
                    const Divider()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShimmerChatSearchBar extends StatelessWidget {
  const ShimmerChatSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return formUI();
  }

  formUI() {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.w15),
            child: Container(
              height: Dimensions.h33,
              padding: EdgeInsets.symmetric(horizontal: Dimensions.w15),
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(Dimensions.r10)),
            ),
          ),
          SizedBox(height: Dimensions.h8),
        ],
      ),
    );
  }
}

class ShimmerStoryTemplate extends StatelessWidget {
  const ShimmerStoryTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShimmerContainer(
          width: Get.width * 0.20,
          height: Dimensions.h8,
        ),
        SizedBox(
          height: Dimensions.h60,
        ),
        Column(
          children: [
            ShimmerContainer(
              width: Get.width * 0.50,
              height: Dimensions.h8,
            ),
            SizedBox(
              height: Dimensions.h6,
            ),
            ShimmerContainer(
              width: Get.width * 0.54,
              height: Dimensions.h8,
            ),
            SizedBox(
              height: Dimensions.h6,
            ),
            ShimmerContainer(
              width: Get.width * 0.58,
              height: Dimensions.h8,
            ),
            SizedBox(
              height: Dimensions.h6,
            ),
            ShimmerContainer(
              width: Get.width * 0.60,
              height: Dimensions.h8,
            ),
            SizedBox(
              height: Dimensions.h6,
            ),
            ShimmerContainer(
              width: Get.width * 0.58,
              height: Dimensions.h8,
            ),
            SizedBox(
              height: Dimensions.h6,
            ),
            ShimmerContainer(
              width: Get.width * 0.55,
              height: Dimensions.h8,
            ),
            SizedBox(
              height: Dimensions.h6,
            ),
            ShimmerContainer(
              width: Get.width * 0.52,
              height: Dimensions.h8,
            ),
            SizedBox(
              height: Dimensions.h6,
            ),
            ShimmerContainer(
              width: Get.width * 0.50,
              height: Dimensions.h8,
            ),
            SizedBox(
              height: Dimensions.h6,
            ),
          ],
        ),
      ],
    );
  }
}

class ShimmerUserPost extends StatelessWidget {
  const ShimmerUserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: ColorConst.shimmerBaseColor,
            highlightColor: ColorConst.shimmerHighLightColor,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Picture, Name, Time
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.w10)
                        .copyWith(bottom: Dimensions.h10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // First Row
                        Container(
                          width: Dimensions.w50,
                          height: Dimensions.w50,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            width: Dimensions.w40,
                            height: Dimensions.w40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.w10,
                        ),

                        // Second Column
                        Padding(
                          padding: EdgeInsets.only(right: Dimensions.h50),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: Dimensions.w150,
                                  height: Dimensions.h9,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(9),
                                  )),
                              SizedBox(
                                height: Dimensions.h6,
                              ),
                              Container(
                                  width: Dimensions.w110,
                                  height: Dimensions.h9,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(9),
                                  )),
                            ],
                          ),
                        ),

                        // Three Dos
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              width: Dimensions.w8,
                              height: Dimensions.w8,
                              margin: EdgeInsets.only(right: Dimensions.w3),
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Container(
                                width: Dimensions.w40,
                                height: Dimensions.w40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            Container(
                              width: Dimensions.w8,
                              margin: EdgeInsets.only(right: Dimensions.w3),
                              height: Dimensions.w8,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Container(
                                width: Dimensions.w40,
                                height: Dimensions.w40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            Container(
                              width: Dimensions.w8,
                              height: Dimensions.w8,
                              margin: EdgeInsets.only(right: Dimensions.w10),
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Container(
                                width: Dimensions.w40,
                                height: Dimensions.w40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Image
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                      ),
                      child: Container(
                        width: Dimensions.w40,
                        height: Dimensions.w40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),

                  // Title
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: Dimensions.w10)
                          .copyWith(top: Dimensions.h10),
                      width: Dimensions.w90,
                      height: Dimensions.h9,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(9),
                      )),

                  // Description
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: Dimensions.w10)
                          .copyWith(top: Dimensions.h7),
                      width: Dimensions.w120,
                      height: Dimensions.h9,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(9),
                      )),

                  // Like Container
                  Container(
                    width: Get.width,
                    height: Dimensions.h44,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(Dimensions.r15),
                          bottomLeft: Radius.circular(Dimensions.r15),
                        )),
                    margin: EdgeInsets.only(
                      top: Dimensions.h10,
                    ),
                    child: Row(
                      children: [
                        // todo make SVG Visible
                        SvgPicture.asset(
                          ImageAsset.icLiked,
                          colorFilter: const ColorFilter.mode(
                              Colors.pink, BlendMode.srcIn),
                          width: Dimensions.w50, // Set the width as needed
                          height: Dimensions.w50, // Set the height as needed
                        )
                      ],
                    ),
                  )
                ],
              ),
              itemCount: 2,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: Dimensions.h20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShimmerOffer extends StatelessWidget {
  const ShimmerOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: ColorConst.shimmerBaseColor,
            highlightColor: ColorConst.shimmerHighLightColor,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: Dimensions.h10),
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w10)
                    .copyWith(bottom: Dimensions.h10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Picture, Name, Time
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // First Row
                        Container(
                          width: Dimensions.w50,
                          height: Dimensions.w50,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            width: Dimensions.w40,
                            height: Dimensions.w40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.w10,
                        ),

                        // Second Column
                        Padding(
                          padding: EdgeInsets.only(right: Dimensions.h50),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: Dimensions.w100,
                                  height: Dimensions.h9,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(9),
                                  )),
                              SizedBox(
                                height: Dimensions.h6,
                              ),
                              Container(
                                  width: Dimensions.w70,
                                  height: Dimensions.h9,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(9),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: Dimensions.h10,
                    ),

                    Row(
                      children: [
                        // Image
                        Container(
                            width: Get.width / 2 - Dimensions.w20,
                            height: Get.width / 2 - Dimensions.w20,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.r20),
                            )),
                        SizedBox(
                          width: Dimensions.w10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title
                            Container(
                                width: Dimensions.w120,
                                height: Dimensions.h10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r20),
                                )),
                            SizedBox(
                              height: Dimensions.h5,
                            ),
                            Container(
                                width: Dimensions.w80,
                                height: Dimensions.h10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r20),
                                )),

                            SizedBox(
                              height: Dimensions.h10,
                            ),
                            // Date
                            Container(
                                width: Dimensions.w100,
                                height: Dimensions.h10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r20),
                                )),

                            SizedBox(
                              height: Dimensions.h10,
                            ),

                            // Offer Type
                            Container(
                                width: Dimensions.w50,
                                height: Dimensions.h10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r20),
                                )),

                            SizedBox(
                              height: Dimensions.h4,
                            ),

                            // Offer Type
                            Container(
                                width: Dimensions.w80,
                                height: Dimensions.h10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r20),
                                )),
                          ],
                        )
                      ],
                    ),

                    SizedBox(
                      height: Dimensions.h10,
                    ),

                    // Send Request button
                    Container(
                        width: Dimensions.w100,
                        height: Dimensions.h30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(Dimensions.r20),
                        )),
                  ],
                ),
              ),
              itemCount: 2,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: Dimensions.h20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShimmerOfferDetail extends StatelessWidget {
  const ShimmerOfferDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: Dimensions.h10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.w10)
                  .copyWith(bottom: Dimensions.h10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h45,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h20,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: Dimensions.h60,
                        width: Get.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(Dimensions.r10),
                        ),
                      ),
                      Container(
                        height: Dimensions.h60,
                        width: Get.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(Dimensions.r10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: Dimensions.h60,
                        width: Get.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(Dimensions.r10),
                        ),
                      ),
                      Container(
                        height: Dimensions.h60,
                        width: Get.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(Dimensions.r10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h60,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h60,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h20,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h60,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
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

class ShimmerEventDetail extends StatelessWidget {
  const ShimmerEventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: Dimensions.h10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.w10)
                  .copyWith(bottom: Dimensions.h10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h45,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Dimensions.w213,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Dimensions.w213,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Dimensions.w213,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  SizedBox(
                    height: Dimensions.h10,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  Container(
                    height: Dimensions.h10,
                    width: Dimensions.w213,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h5,
                  ),
                  SizedBox(
                    height: Dimensions.h5,
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

class ShimmerUserItem extends StatelessWidget {
  final bool showTrailing;

  const ShimmerUserItem({super.key, this.showTrailing = true});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimensions.h10,
            ),
            Shimmer.fromColors(
              baseColor: ColorConst.shimmerBaseColor,
              highlightColor: ColorConst.shimmerHighLightColor,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.w10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // First Row
                      Container(
                        width: Dimensions.w50,
                        height: Dimensions.w50,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          width: Dimensions.w40,
                          height: Dimensions.w40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.w10,
                      ),

                      // Second Column
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: Dimensions.w150,
                              height: Dimensions.h9,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(9),
                              )),
                          SizedBox(
                            height: Dimensions.h6,
                          ),
                          Container(
                              width: Dimensions.w110,
                              height: Dimensions.h9,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(9),
                              )),
                        ],
                      ),
                      const Spacer(),

                      // Three Dos
                      if (showTrailing)
                        Container(
                          width: Dimensions.w80,
                          height: Dimensions.w25,
                          margin: EdgeInsets.only(right: Dimensions.w10),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(Dimensions.r25),
                          ),
                        )
                    ],
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: Dimensions.h20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShimmerChatPersonItem extends StatelessWidget {
  const ShimmerChatPersonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: ColorConst.shimmerBaseColor,
            highlightColor: ColorConst.shimmerHighLightColor,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w10),
                child: Row(
                  children: [
                    // First Row
                    Container(
                      width: Dimensions.w50,
                      height: Dimensions.w50,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        width: Dimensions.w40,
                        height: Dimensions.w40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.w10,
                    ),

                    // Second Column
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: Dimensions.w150,
                            height: Dimensions.h9,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9),
                            )),
                        SizedBox(
                          height: Dimensions.h6,
                        ),
                        Container(
                            width: Dimensions.w110,
                            height: Dimensions.h9,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9),
                            )),
                      ],
                    ),
                    const Spacer(),

                    // Date Time
                    Container(
                      width: Dimensions.w80,
                      height: Dimensions.w10,
                      margin: EdgeInsets.only(
                          right: Dimensions.w10, bottom: Dimensions.h14),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(Dimensions.r25),
                      ),
                    )
                  ],
                ),
              ),
              itemCount: 8,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: Dimensions.h18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShimmerChattingScreen extends StatelessWidget {
  const ShimmerChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Shimmer.fromColors(
        baseColor: ColorConst.shimmerBaseColor,
        highlightColor: ColorConst.shimmerHighLightColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w10),
          child: Column(
            children: [
              // Her
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: Dimensions.w200,
                    height: Dimensions.h60,
                    margin: EdgeInsets.only(top: Dimensions.h10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.r5),
                          bottomLeft: Radius.circular(Dimensions.r15),
                          topRight: Radius.circular(Dimensions.r15),
                          bottomRight: Radius.circular(Dimensions.r15)),
                    )),
              ),

              // Mine
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: Dimensions.w180,
                  height: Dimensions.h35,
                  margin: EdgeInsets.only(
                      right: Dimensions.w10,
                      bottom: Dimensions.h14,
                      top: Dimensions.h13),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.r15),
                        bottomLeft: Radius.circular(Dimensions.r15),
                        topRight: Radius.circular(Dimensions.r5),
                        bottomRight: Radius.circular(Dimensions.r15)),
                  ),
                ),
              ),

              // Her
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: Dimensions.w200,
                    height: Dimensions.h60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.r5),
                          bottomLeft: Radius.circular(Dimensions.r15),
                          topRight: Radius.circular(Dimensions.r15),
                          bottomRight: Radius.circular(Dimensions.r15)),
                    )),
              ),
              // Her
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: Dimensions.w150,
                    height: Dimensions.h35,
                    margin: EdgeInsets.only(top: Dimensions.h5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.r5),
                          bottomLeft: Radius.circular(Dimensions.r15),
                          topRight: Radius.circular(Dimensions.r15),
                          bottomRight: Radius.circular(Dimensions.r15)),
                    )),
              ),

              // Mine
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: Dimensions.w200,
                  height: Dimensions.h60,
                  margin: EdgeInsets.only(
                      right: Dimensions.w10, top: Dimensions.h13),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.r15),
                        bottomLeft: Radius.circular(Dimensions.r15),
                        topRight: Radius.circular(Dimensions.r5),
                        bottomRight: Radius.circular(Dimensions.r15)),
                  ),
                ),
              ),
              // Mine
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: Dimensions.w180,
                  height: Dimensions.h35,
                  margin: EdgeInsets.only(
                      right: Dimensions.w10,
                      bottom: Dimensions.h14,
                      top: Dimensions.h5),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.r15),
                        bottomLeft: Radius.circular(Dimensions.r15),
                        topRight: Radius.circular(Dimensions.r5),
                        bottomRight: Radius.circular(Dimensions.r15)),
                  ),
                ),
              ),

              // Her
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: Dimensions.w150,
                    height: Dimensions.h35,
                    margin: EdgeInsets.only(top: Dimensions.h5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.r5),
                          bottomLeft: Radius.circular(Dimensions.r15),
                          topRight: Radius.circular(Dimensions.r15),
                          bottomRight: Radius.circular(Dimensions.r15)),
                    )),
              ),
              // Her
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: Dimensions.w200,
                    height: Dimensions.h60,
                    margin: EdgeInsets.only(top: Dimensions.h5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.r5),
                          bottomLeft: Radius.circular(Dimensions.r15),
                          topRight: Radius.circular(Dimensions.r15),
                          bottomRight: Radius.circular(Dimensions.r15)),
                    )),
              ),

              // Mine
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: Dimensions.w180,
                  height: Dimensions.h35,
                  margin: EdgeInsets.only(
                      right: Dimensions.w10, top: Dimensions.h10),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.r15),
                        bottomLeft: Radius.circular(Dimensions.r15),
                        topRight: Radius.circular(Dimensions.r5),
                        bottomRight: Radius.circular(Dimensions.r15)),
                  ),
                ),
              ),
              // Mine
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: Dimensions.w200,
                  height: Dimensions.h35,
                  margin: EdgeInsets.only(
                      right: Dimensions.w10,
                      bottom: Dimensions.h14,
                      top: Dimensions.h5),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.r15),
                        bottomLeft: Radius.circular(Dimensions.r15),
                        topRight: Radius.circular(Dimensions.r5),
                        bottomRight: Radius.circular(Dimensions.r15)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShimmerNotificationItem extends StatelessWidget {
  final int itemCount;

  const ShimmerNotificationItem({super.key, this.itemCount = 5});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemCount: itemCount,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.w5),
              child: Container(
                padding: EdgeInsets.all(Dimensions.w10),
                margin: EdgeInsets.symmetric(horizontal: Dimensions.w15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.r10),
                  color: Get.theme.colorScheme.textFieldColor,
                ),
                child: Shimmer.fromColors(
                  baseColor: ColorConst.shimmerBaseColor,
                  highlightColor: ColorConst.shimmerHighLightColor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // First Row
                      Container(
                        width: Dimensions.w100,
                        height: Dimensions.w100,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(Dimensions.r10),
                        ),
                        // child: Container(
                        //   width: Dimensions.w40,
                        //   height: Dimensions.w40,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30),
                        //   ),
                        // ),
                      ),
                      SizedBox(
                        width: Dimensions.w10,
                      ),

                      // Second Column
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: Dimensions.w120,
                              height: Dimensions.h9,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(9),
                              )),
                          SizedBox(
                            height: Dimensions.h6,
                          ),
                          Container(
                              width: Dimensions.w150,
                              height: Dimensions.h9,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(9),
                              )),
                          SizedBox(
                            height: Dimensions.h6,
                          ),
                          Container(
                              width: Dimensions.w150,
                              height: Dimensions.h9,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(9),
                              )),
                          SizedBox(
                            height: Dimensions.h6,
                          ),
                          Container(
                              width: Dimensions.w50,
                              height: Dimensions.h9,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(9),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: Dimensions.h20,
            ),
          ),
        ],
      ),
    );
  }
}

class ShimmerCommentListItem extends StatelessWidget {
  final int itemCount;

  const ShimmerCommentListItem({super.key, this.itemCount = 8});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConst.shimmerBaseColor,
      highlightColor: ColorConst.shimmerHighLightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: ColorConst.shimmerBaseColor,
            highlightColor: ColorConst.shimmerHighLightColor,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: itemCount,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // First Row
                    Container(
                      width: Dimensions.w50,
                      height: Dimensions.w50,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        width: Dimensions.w40,
                        height: Dimensions.w40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.w10,
                    ),

                    // Second Column
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: Dimensions.w150,
                            height: Dimensions.h9,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9),
                            )),
                        SizedBox(
                          height: Dimensions.h6,
                        ),
                        Container(
                            width: Dimensions.w110,
                            height: Dimensions.h9,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9),
                            )),
                      ],
                    ),
                    const Spacer(),

                    // Three Dos
                    Container(
                      width: Dimensions.w50,
                      height: Dimensions.w10,
                      margin: EdgeInsets.only(right: Dimensions.w10),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(Dimensions.r25),
                      ),
                    )
                  ],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: Dimensions.h20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
