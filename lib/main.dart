import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sayhappi/Theme/sayhappi_theme.dart';
import 'package:sayhappi/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Sayhappi',
      theme: SayhappiTheme.buildLightTheme(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
