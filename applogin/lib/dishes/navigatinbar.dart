import 'package:flutter/material.dart';
import '../sign/welcome_page.dart';
import 'menu.dart';

class Bottom extends StatefulWidget {
  Bottom({Key? key}) : super(key: key);


  @override

  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  final screens = [
    MenuScreen(),
    WelcomePage(),

  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index)=> setState(() => currentIndex = index),
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_sharp),
            label: 'Меню',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Выход',
            backgroundColor: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}



