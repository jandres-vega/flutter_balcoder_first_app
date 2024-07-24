import 'package:flutter/material.dart';

class CustomFieldText extends StatelessWidget {

  final String label;
  final bool password;
  final String hint;
  final IconData icon;
  final String? Function(String?)? validator;

  const CustomFieldText({super.key,
    required this.label,
    this.password = false,
    required this.hint,
    required this.icon,
    this.validator
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: password,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validator,
    );
  }

}