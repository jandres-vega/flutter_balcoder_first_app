import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/utils/widget/custom_field_text.dart';
import 'package:flutter_balcoder_first_app/utils/widget/main_scaffold.dart';
import 'package:flutter_balcoder_first_app/utils/mixins/text_form_validate.dart';
import 'package:flutter_balcoder_first_app/utils/widget/snack_bar.dart';

import '../../../utils/widget/custom_app_bar.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> with TextFormValidate {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      appBar: const CustomAppBar(title: 'Login', showDrawer: true),
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
                      CustomFieldText(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        label: 'Email',
                        hint: 'Ingresa el email',
                        icon: Icons.email,
                        validator: validateEmail,
                      ),
                      const SizedBox(height: 20),
                      CustomFieldText(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        label: 'Password',
                        hint: 'Ingresa el password',
                        password: true,
                        icon: Icons.password,
                        validator: validatePassword,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                showSnackBar(context, 'Inicio de sesion');
                              }
                            },
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