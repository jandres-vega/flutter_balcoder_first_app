import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/utils/widget/drawer_widget.dart';

class MainScaffold extends StatefulWidget {
  final Widget child;
  final String title;
  final bool showDrawer;

  const MainScaffold(
      {super.key,
      required this.child,
      required this.title,
      required this.showDrawer});

  @override
  State<StatefulWidget> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
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
                icon: const Icon(Icons.home),
                alignment: AlignmentDirectional.centerStart,
                color: Colors.white,
                padding: const EdgeInsets.all(8.0)
          )
      ),
      drawer: widget.showDrawer ? const Drawer(child: DrawerWidget()) : null,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: widget.child,
      ),
    );
  }
}
