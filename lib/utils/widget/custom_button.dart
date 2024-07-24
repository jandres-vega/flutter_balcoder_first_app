import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent[200]!),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            )
        ),
        child: Text(
          text,
          style: const TextStyle(
              height: 2.1,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        )
    );
  }
}