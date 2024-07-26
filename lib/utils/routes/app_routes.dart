import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/ui/auth/login/login_page.dart';
import 'package:flutter_balcoder_first_app/ui/auth/register/register_page.dart';
import 'package:flutter_balcoder_first_app/ui/home/home_page.dart';
import 'package:flutter_balcoder_first_app/ui/splash/splash.dart';


class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case splash:
        return CupertinoPageRoute(builder: (context) => const Splash());
      case home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case login:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case register:
        return MaterialPageRoute(builder: (context) => const RegisterPage());
      default:
        return CupertinoPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}