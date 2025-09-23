import 'package:coading/pages/home_page.dart';
import 'package:coading/pages/login_page.dart';
import 'package:coading/pages/main_page.dart';
import 'package:coading/styles/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
       initialRoute: '/',
       routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
