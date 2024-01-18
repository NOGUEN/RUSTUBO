import 'package:get/get.dart';
import 'package:rutsubo/app/controller/application_page_controller.dart';

class ApplicationPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationPageController>(() {
      return ApplicationPageController();
    });
  }
}
