import 'package:flutter/material.dart';
import 'package:careme_rpl/Screen/home_screen.dart';
import 'package:careme_rpl/Screen/profile_screen.dart';

import '../Screen/screen_primary_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indeks = 0;
  final List<Widget> contents = <Widget>[
    const HomeScreen(),
    const Timeline(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      indeks = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: contents.elementAt(indeks),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Timeline',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: indeks,
        selectedItemColor: const Color(0XFF36622B),
        onTap: _onItemTapped,
      ),
    );
  }
}
