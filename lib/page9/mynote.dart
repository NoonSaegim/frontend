import 'package:flutter/material.dart';
import '../common/drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common/noon_appbar.dart';
import './accordion.dart';
import "dart:math" show pi;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar2(),
      body:
      SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child :
          Column(children: [
            Accordion('단어장 #1',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum ornare vulputate. Curabitur faucibus condimentum purus quis tristique.'),
            Accordion('단어장 #2',
                'Fusce ex mi, commodo ut bibendum sit amet, faucibus ac felis. Nullam vel accumsan turpis, quis pretium ipsum. Pellentesque tristique, diam at congue viverra, neque dolor suscipit justo, vitae elementum leo sem vel ipsum'),
            Accordion('단어장 #3',
                'Nulla facilisi. Donec a bibendum metus. Fusce tristique ex lacus, ac finibus quam semper eu. Ut maximus, enim eu ornare fringilla, metus neque luctus est, rutrum accumsan nibh ipsum in erat. Morbi tristique accumsan odio quis luctus.'),
          ]
          )
      ),
    );
  }
}