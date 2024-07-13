import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/utils/widget/custom_field_text.dart';
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
    return MainScaffold(
        title: 'Login',
        showDrawer: true,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: const Form(
              child: Column(
                children: [
                  CustomFieldText(
                      label: 'Email',
                      password: false,
                      hint: 'Ingresa el email',
                      icon: Icons.confirmation_num_outlined
                  ),
                ],
              ),
            ),
          )
        )
    );
  }

}