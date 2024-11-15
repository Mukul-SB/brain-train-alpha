import '../../../../../core/basic_features.dart';
import '../widgets/flip_card_controller.dart';

class TwinMatchController extends GetxController {
  // Flip Card Controllers
  final listFlipCardController = List.generate(
    6,
    (index) => FlipCardController(),
  );

  @override
  void dispose() {
    for (var element in listFlipCardController) {
      element.dispose();
    }
    super.dispose();
  }


}
