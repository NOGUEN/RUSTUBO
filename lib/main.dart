import 'dart:ui_web' as ui;
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:rutsubo/app/main.dart';

import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  EnvConfig devConfig = EnvConfig(
    appName: "RUSTUBO",
    baseUrl: "https://rustubo-18a7c.web.app",
    shouldCollectCrashLog: true,
  );

  ui.platformViewRegistry.registerViewFactory(
      'example', (_) => DivElement()..innerText = 'Hello, HTML!');

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}
