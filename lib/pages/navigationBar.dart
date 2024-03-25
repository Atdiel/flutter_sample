import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_primera_app/pages/pageHome.dart';
import 'package:flutter_primera_app/pages/pageUser.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentPage = 0;

  List<Widget> _pages = [
    PageHome(),
    PageUser(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          currentIndex: _currentPage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "User")
          ]),
    );
  }
}
