import 'package:flutter/material.dart';


import 'custom_app_bar.dart';
import 'drawer_widget.dart';

class MainScaffold extends StatefulWidget {

  final Widget child;
  final String title;
  final bool showDrawer;
  final Widget? bottomNavigationBar;
  final PreferredSizeWidget? appBar;

  const MainScaffold({
    super.key,
    required this.child,
    required this.title,
    required this.showDrawer, this.bottomNavigationBar, this.appBar
  });

  @override
  State<StatefulWidget> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: widget.showDrawer
              ? Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ))
              : IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back))),
      drawer: widget.showDrawer ? const Drawer(child: DrawerWidget()) : null,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: widget.child,
      ),
    );
  }
}

