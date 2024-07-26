import 'package:flutter/cupertino.dart';
import 'package:flutter_balcoder_first_app/utils/widget/Floating_action_like.dart';
import 'package:flutter_balcoder_first_app/utils/widget/card.dart';

class CardImage extends StatelessWidget {

  String pathImage = "assets/img/img1.jpg";

  CardImage(this.pathImage,{super.key});

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
