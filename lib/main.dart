import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';
import 'package:perplexity_clone/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perplexity Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: HomePage(),
    );
  }
}


