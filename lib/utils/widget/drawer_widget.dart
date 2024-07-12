import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<StatefulWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Menú'),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: null,
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: null,
        ),
      ],
    );
  }
}