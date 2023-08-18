import 'package:flutter/cupertino.dart';
import 'package:flutter_e_commerce_app/pages/confirm_password_page.dart';
import 'package:flutter_e_commerce_app/pages/fogot_password_page.dart';
import 'package:flutter_e_commerce_app/pages/login_success_page.dart';
import 'package:flutter_e_commerce_app/pages/sign_in_page.dart';
import 'package:flutter_e_commerce_app/pages/sign_up_page.dart';
import 'package:flutter_e_commerce_app/pages/splash_page.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    "/splashPage": (context) => const SplashPage(),
    "/signInPage": (context) => const SignInPage(),
    "/forgotPasswordPage": (context) => const ForgotPasswordPage(),
    "/confirmPasswordPage": (context) => const ConfirmPasswordPage(),
    "/loginSuccessPage": (context) => const LoginSuccessPage(),
    "/signUpPage": (context) => const SignUpPage(),
  };
}
