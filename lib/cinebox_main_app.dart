import 'package:cinebox/ui/core/themes/theme.dart';
import 'package:cinebox/ui/home/home_screen.dart';
import 'package:cinebox/ui/login/login_screen.dart';
import 'package:cinebox/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class CineboxMainApp extends StatelessWidget {
  const CineboxMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CineBox',
      theme: AppTheme.theme,
      routes: {
        '/': (_) => SplashScreen(),
        '/login': (_) => LoginScreen(),
        '/home': (_) => HomeScreen(),
      },
    );
  }
}
