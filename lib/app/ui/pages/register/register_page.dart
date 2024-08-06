import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/app/domain/inputs/sign_up.dart';
import 'package:flutter_balcoder_first_app/app/domain/repository/sign_up_repository.dart';
import 'package:flutter_balcoder_first_app/app/inject_dependencies.dart';
import '../../../utils/mixins/text_form_validate.dart';
import '../../../utils/widget/custom_app_bar.dart';
import '../../../utils/widget/custom_field_text.dart';
import '../../../utils/widget/main_scaffold.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> with TextFormValidate {

  final _signUpRepository = getIt<SignUpRepository>();

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController = TextEditingController();

  Future<SignResponse?>register() async{
    if (_formKey.currentState!.validate()) {
      // await AuthService().registerWithEmailAndPassword(_emailController.text, _passwordController.text, _nameController.text);
      return _signUpRepository.signUp(SignUpData(
        name: _nameController.text,
        date: _dateController.text,
        email: _emailController.text,
        password: _passwordController.text,
      ));
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      appBar: const CustomAppBar(title: 'Register', showDrawer: true),
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
                          onPressed: () => register(),
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