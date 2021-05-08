import 'package:flutter/material.dart';
import 'package:novel_covid_19/helpline.dart';
import 'package:novel_covid_19/home.dart';
import 'package:novel_covid_19/information.dart';

import 'const.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  final _pages = [Home(), Information(), Helpline()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        unselectedItemColor: grey,
        selectedItemColor: black,
        onTap: _onItemTapped,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home_outlined,
              size: 25,
            ),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.info_outline,
              size: 25,
            ),
            title: new Text('Info'),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call_outlined,
                size: 25,
              ),
              title: Text('Helpline'))
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}
