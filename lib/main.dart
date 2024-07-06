import 'package:flutter/material.dart';
import 'package:flutter_application_21_6_2024/app_theme.dart';
import 'package:flutter_application_21_6_2024/home_page.dart';

void main() {
  runApp(const UsefulLinksApp());
}

class UsefulLinksApp extends StatelessWidget {
  const UsefulLinksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Useful Links',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
