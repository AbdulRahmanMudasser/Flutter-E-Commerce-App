import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/splash_page/splash_body.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizeConfig().init(context);

    return const Scaffold(
      body: SplashPageBody(),
    );
  }
}
