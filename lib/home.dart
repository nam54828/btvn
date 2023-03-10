import 'package:doducnam_54828_st20a2a_baikiemtraso1/BTVN/baiSo1.dart';
import 'package:doducnam_54828_st20a2a_baikiemtraso1/BTVN/baiSo2.dart';
import 'package:doducnam_54828_st20a2a_baikiemtraso1/BTVN/baiSo3.dart';
import 'package:doducnam_54828_st20a2a_baikiemtraso1/BTVN/baiSo4.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final tabBar = [
    baiSo1(),
    baiSo2(),
    baiSo3(),
    baiSo4()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabBar[_selectedIndex],
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            selectedItemColor: Color.fromRGBO(0, 206, 166, 1),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            unselectedItemColor: Color.fromRGBO(175, 175, 175, 100),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.numbers),
                label: "Bài số 1",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.numbers),
                label: 'Bài số 2',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.numbers),
                  label: "Bài số 3"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.numbers),
                  label: "Bài số 4"
              ),
            ],
            selectedLabelStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(0, 206, 166, 1),
                fontFamily: 'TextMedium'),
          ),
        )
    );
  }
}
