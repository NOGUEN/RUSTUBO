import 'package:get/get.dart';
import 'package:rutsubo/app/controller/landing_page_controller.dart';

class LandingPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingPageController>(() {
      return LandingPageController();
    });
  }
}
