import 'package:get/get.dart';

class FlipCardController extends GetxController {
  var isFlipped = false.obs;

  Future<void> flip() async {
    isFlipped.value = !isFlipped.value;
  }

  void reset() => isFlipped.value = false;
}
