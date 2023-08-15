import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Commerce',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.kTextColor),
          bodyMedium: TextStyle(color: AppColors.kTextColor)
        )
      ),
      home: ,
    );
  }
}
