import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/basic_features.dart';
import 'controllers/game_explorer_controller.dart';

class GameExplorerScreen extends StatelessWidget {
  GameExplorerScreen({super.key});

  final controller = GameExplorerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.blackColor,
      appBar: AppBar(
        backgroundColor: ColorConst.blackColor,
        title: Text(AppString.gameExplorer,
            style: fontStyleSemiBold10.copyWith(
                fontSize: Dimensions.sp20, color: ColorConst.whiteColor)),
      ),
      body: ListView.builder(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.commonPaddingForScreen)
                .copyWith(top: Dimensions.h18),
        itemCount: controller.games.length,
        itemBuilder: (context, index) => Padding(
          padding: index != controller.games.length - 1
              ? EdgeInsets.only(bottom: Dimensions.h10)
              : EdgeInsets.zero,
          child: Card(
            shadowColor: ColorConst.greyColor,
            elevation: 2,
            child: ListTile(
              onTap: () => controller.games[index].navigateToGameScreen(),
              contentPadding: EdgeInsets.symmetric(
                  vertical: Dimensions.h10, horizontal: Dimensions.h16),
              tileColor: controller.games[index].tileColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: Text(
                controller.games[index].name,
                style: fontStyleSemiBold20.copyWith(
                    fontSize: Dimensions.sp20, color: Colors.black87),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
