import 'dart:ui_web' as ui;
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:rutsubo/app/main.dart';

import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';

void main() async {
  EnvConfig devConfig = EnvConfig(
    appName: "RUSTUBO",
    baseUrl: "",
    shouldCollectCrashLog: true,
  );

  ui.platformViewRegistry.registerViewFactory(
      'example', (_) => DivElement()..innerText = 'Hello, HTML!');

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  runApp(const App());
}
