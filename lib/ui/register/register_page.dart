import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/utils/widget/main_scaffold.dart';

import '../../utils/mixins/text_form_validate.dart';
import '../../utils/widget/custom_field_text.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> with TextFormValidate {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        title: 'Register',
        showDrawer: true,
        child: Center(
          child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 100,
                    ),
                    const SizedBox(height: 20),
                    CustomFieldText(
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      label: 'Names',
                      hint: 'Ingresa tu nombre completo',
                      icon: Icons.person,
                      validator: validateRequired,
                    ),
                    const SizedBox(height: 20),
                    CustomFieldText(
                      controller: _dateController,
                      keyboardType: TextInputType.datetime,
                      label: 'date',
                      hint: 'Ingresa la fecha de nacimeinto',
                      icon: Icons.calendar_month,
                      validator: validateRequired,
                    ),
                    const SizedBox(height: 20),
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
                      label: 'Contraseña',
                      hint: 'Ingresa el password',
                      password: true,
                      icon: Icons.password,
                      validator: validatePassword,
                    ),
                    const SizedBox(height: 20),
                    CustomFieldText(
                      controller: _passwordConfirmationController,
                      keyboardType: TextInputType.text,
                      label: 'Nueva contraseña',
                      hint: 'Ingresa nuevamente el password',
                      password: true,
                      icon: Icons.password,
                      validator: (value) => validatePasswordConfirmation(value, _passwordController.text),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print('Email: ${_emailController.text}');
                              print('Password: ${_passwordController.text}');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                          ),
                          child: const Text('Registrar')
                      ),
                    ),
                  ],
                )
            ),
          ),
        )
    );
  }
}