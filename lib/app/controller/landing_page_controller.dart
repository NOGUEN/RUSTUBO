import 'package:get/get.dart';
import 'package:rutsubo/app/core/base/base_controller.dart';
import 'package:rutsubo/responsive.dart';

class LandingPageController extends BaseController {
  Rx<double> scrollPosition = 0.0.obs;
  Rx<double> screenWidth = 0.0.obs;
  Rx<bool> redraw = false.obs;

  Rx<double> setOpacity(context) {
    double multiplier;

    if (Responsive.isDesktop(context)) {
      multiplier = 0.001;
    } else if (Responsive.isTablet(context)) {
      multiplier = 0.002;
    } else {
      multiplier = 0.003;
    }

    if (scrollPosition.value * multiplier >= 1) {
      return 1.0.obs;
    }

    return (scrollPosition.value * multiplier).obs;
  }
}
