import 'package:cinebox/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class CineboxMainApp extends StatelessWidget {
  const CineboxMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CineBox',
      routes: {'/': (_) => SplashScreen()},
    );
  }
}
