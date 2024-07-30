import 'package:flutter/material.dart';

import '../../ui/article/form_article.dart';
import '../../ui/home/home_page.dart';
import '../../ui/profile/profile.dart';

class BlogNavigation extends StatefulWidget {
  const BlogNavigation({super.key});

  @override
  State<BlogNavigation> createState() => _BlogNavigationState();
}

class _BlogNavigationState extends State<BlogNavigation> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    const HomePage(),
    const FormArticle(),
    const ProfilePage()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
            currentIndex: indexTap,
            onTap: onTapTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Buscar",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "perfil",
              )
            ],
          ),
      )
    );
  }
}
