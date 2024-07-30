import 'package:flutter/cupertino.dart';
import 'CardImage.dart';


class ListCardImage extends StatelessWidget {
  const ListCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(pathImage: 'assets/img/img1.jpg'),
          CardImage(pathImage: 'assets/img/img1.jpg'),
          CardImage(pathImage: 'assets/img/img1.jpg'),
          CardImage(pathImage: 'assets/img/img1.jpg'),
        ],
      )
    );
  }
}
