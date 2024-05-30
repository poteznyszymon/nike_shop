import 'package:flutter/material.dart';
import 'package:nike_shop/intro_pages/intro_page.dart';
import 'package:nike_shop/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme().customThemeData,
      home: const IntroPage(),
    );
  }
}
