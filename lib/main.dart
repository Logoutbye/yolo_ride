import 'package:ezeehome_webview/Controllers/initlize_app.dart';
import 'package:ezeehome_webview/Screens/Home.dart';
import 'package:ezeehome_webview/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'chnages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // splash screen time duration
  await Future.delayed(const Duration(seconds: 5));
  FlutterNativeSplash.remove();

  InitilizeApp.callFunctions();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Changes.AppTitle,
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            // useMaterial3: true
            ),
        home: Home());
  }
}
