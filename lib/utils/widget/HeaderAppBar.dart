import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/utils/widget/gradient_back.dart';
import 'package:flutter_balcoder_first_app/utils/widget/list_card_image.dart';

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
