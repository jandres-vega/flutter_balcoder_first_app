import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/utils/widget/main_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MainScaffold(
          title: 'Home',
          showDrawer: true,
          child: Text('Home Page')
      )
    );
  }
}
