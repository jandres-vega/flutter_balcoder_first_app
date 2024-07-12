import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/utils/widget/main_scaffold.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const MainScaffold(
        title: 'Login',
        showDrawer: true,
        child: Center(
          child: Text('Login Page'),
        )
    );
  }

}