import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/utils/widget/snack_bar.dart';

class FloatingActionLike extends StatefulWidget {
  const FloatingActionLike({super.key});

  @override
  State<FloatingActionLike> createState() => _FloatingActionLikeState();
}

class _FloatingActionLikeState extends State<FloatingActionLike> {


  onPressedFav(){
    showSnackBar(context, "Agregaste un favorito");
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFFC23B3B),
      mini: true,
        tooltip: "Favorito",
        onPressed: onPressedFav,
        child: const Icon(
          Icons.favorite_border
        )
    );
  }
}
