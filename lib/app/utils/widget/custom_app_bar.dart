import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  final bool showDrawer;

  const CustomAppBar({super.key, required this.title, required this.showDrawer});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: showDrawer
          ? Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      )
          : IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}