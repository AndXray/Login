
import 'package:flutter/material.dart';
import 'package:applogin/dishes/menu.dart';

class Catalog extends StatelessWidget {

  const Catalog({Key? key, this.list}) : super(key: key);
  final list;

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
          home: MenuScreen(),
    );
  }
}

