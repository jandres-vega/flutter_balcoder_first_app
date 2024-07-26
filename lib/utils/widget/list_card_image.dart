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
        children: [
          CardImage("assets/img/img1.jpg"),
          CardImage("assets/img/img2.jpg"),
          CardImage("assets/img/img3.jpg"),
          CardImage("assets/img/img4.jpeg")
        ],
      )
    );
  }
}
