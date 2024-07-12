import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/ui/home/home_page.dart';
import 'package:flutter_balcoder_first_app/ui/login/login_page.dart';
import 'package:flutter_balcoder_first_app/ui/register/register_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
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