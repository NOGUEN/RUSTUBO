// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:rutsubo/app/bindings/application_page_binding.dart';
import 'package:rutsubo/app/bindings/landing_page_binding.dart';
import 'package:rutsubo/app/view/application_page/application_page.dart';
import 'package:rutsubo/app/view/landing_page/landing_page.dart';

part './app_routes.dart';

// 앱 내 페이지를 정의하는 공간, 페이지 만든 후 여기에 정의해주세요
class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;
  static const APPLICATION = Routes.APPLICATION;

  static final pages = [
    GetPage(
      name: _Paths.MAIN,
      page: () => LandingPage(),
      binding: LandingPageBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.APPLICATION,
      page: () => ApplicationPage(),
      binding: ApplicationPageBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
