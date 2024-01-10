import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rutsubo/app/core/base/base_controller.dart';
import 'package:rutsubo/global_setting/app_colors.dart';

class LandingPageController extends BaseController {
  Rx<double> scrollPosition = 0.0.obs;
  Rx<bool> redraw = false.obs;

  Rx<double> setOpacity() {
    if (scrollPosition.value * 0.0005 + 0.8 >= 1) {
      return 1.0.obs;
    }

    return (scrollPosition.value * 0.0005 + 0.8).obs;
  }

  Rx<double> setFirstCellOpacity() {
    if (scrollPosition.value * 0.0015 >= 1) {
      return 1.0.obs;
    }

    return (scrollPosition.value * 0.0015).obs;
  }

  Color setColor() {
    if (scrollPosition.value < 680) {
      return AppColors.white;
    } else {
      if ((scrollPosition.value - 680) ~/ 300 % 2 == 0)
        return AppColors.black;
      else
        return AppColors.white;
    }
  }
}
