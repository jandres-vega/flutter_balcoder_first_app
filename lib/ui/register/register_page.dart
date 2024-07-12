import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/utils/widget/main_scaffold.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return const MainScaffold(
        title: 'Register',
        showDrawer: true,
        child: Center(
          child: Text('Register Page'),
        )
    );
  }
}