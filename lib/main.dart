import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_routes.dart';
import 'package:flutter_e_commerce_app/config/app_theme.dart';

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
      theme: AppTheme.theme,
      initialRoute: "/splashPage",
      routes: AppRoutes.routes,
    );
  }
}
