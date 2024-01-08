import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rutsubo/app/bindings/initial_binding.dart';
import 'package:rutsubo/app/routes/app_pages.dart';
import 'package:rutsubo/flavors/build_config.dart';
import 'package:rutsubo/flavors/env_config.dart';
import 'package:rutsubo/global_setting/app_theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final EnvConfig _envConfig = BuildConfig.instance.config;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: _envConfig.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.pages,
      initialBinding: InitialBinding(),
      theme: appThemeData,
      defaultTransition: Transition.fade,
    );
  }
}
