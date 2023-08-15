import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_colors.dart';
import 'package:flutter_e_commerce_app/config/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.kTextColor),
          bodyMedium: TextStyle(color: AppColors.kTextColor),
        )
      ),
      initialRoute: "/splashPage",
      routes: AppRoutes.routes,
    );
  }
}
