import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'list_card_image.dart';


class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        GradiantBack(title: "Bienvenido"),
        ListCardImage()
      ],
    );
  }
}
