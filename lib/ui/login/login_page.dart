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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        title: 'Login',
        showDrawer: true,
        child: Center(
          child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                    children: [
                      const Icon(
                        Icons.lock,
                        size: 100,
                      ),
                      const CustomFieldText(
                        label: 'Email',
                        hint: 'Ingresa el email',
                        icon: Icons.email,
                      ),
                      const SizedBox(height: 20),
                      const CustomFieldText(
                        label: 'Password',
                        hint: 'Ingresa el password',
                        password: true,
                        icon: Icons.password,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                            ),
                            child: const Text('Iniciar sesion')
                        ),
                      ),
                      const Center(
                        child: Text(
                          "Olvidaste tu contraseña?",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ]
                )
            ),
          )
        )
    );
  }
}