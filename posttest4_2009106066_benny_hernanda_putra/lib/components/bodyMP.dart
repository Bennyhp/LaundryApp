import 'package:flutter/material.dart';
import 'package:posttest4_2009106066_benny_hernanda_putra/DetailOrderPage.dart';
import 'package:posttest4_2009106066_benny_hernanda_putra/HistoryPage.dart';
import 'package:posttest4_2009106066_benny_hernanda_putra/MainPage.dart';
import 'cardsMP.dart';
import 'list/colors.dart';

class bodyMP extends StatefulWidget {
  const bodyMP({Key? key}) : super(key: key);

  @override
  State<bodyMP> createState() => _bodyMPState();
}

class _bodyMPState extends State<bodyMP> {
  int _index = 0;

  static final List<Widget> _pages = [
    cardsMP(),
    detailOrder(),
    historyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainBgColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: DarkBlue,
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white30,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "New",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
          ],
        ),
      ),
      body: _pages.elementAt(_index),
    );
  }
}
