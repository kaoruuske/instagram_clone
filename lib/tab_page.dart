import 'package:flutter/material.dart';
import 'package:instagram_clone/account_page.dart';

import 'home_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  List _pages = [Homepage(), Text('Page2'), Accountpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('HOME')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text('SEARCH')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('Account'))
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
