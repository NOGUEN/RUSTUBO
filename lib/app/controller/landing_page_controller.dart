import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rutsubo/app/core/base/base_controller.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
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

  Rx<double> setHeaderOpacity(BuildContext context) {
    double mainTitleHeight;

    if (Responsive.isDesktop(context)) {
      mainTitleHeight = 500;
    } else if (Responsive.isTablet(context)) {
      mainTitleHeight = 300;
    } else {
      mainTitleHeight = 150;
    }

    if (scrollPosition.value >= mainTitleHeight) {
      return 1.0.obs;
    }

    return 0.0.obs;
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
