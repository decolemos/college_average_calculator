import 'package:college_average_calculator/home/home_page.dart';
import 'package:flutter/material.dart';

class AppConfig extends StatelessWidget {
  const AppConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:  const Color(0xff005CAA)
      ),
      home: const HomePage(),
    );
  }
}