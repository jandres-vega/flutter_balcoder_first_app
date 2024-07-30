

import 'package:flutter/cupertino.dart';

import 'Floating_action_like.dart';
import 'card.dart';


class CardImage extends StatelessWidget {

  final String pathImage;

  const CardImage({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        Card(pathImage: pathImage),
        const FloatingActionLike()
      ],
    );
  }
}
