import 'package:get/get.dart';
import 'package:rutsubo/app/core/base/base_controller.dart';

class LandingPageController extends BaseController {
  Rx<double> scrollPosition = 0.0.obs;

  Rx<double> setOpacity() {
    if (scrollPosition.value * 0.005 + 0.4 >= 0.8) {
      return 0.8.obs;
    }

    return (scrollPosition.value * 0.005 + 0.4).obs;
  }
}
