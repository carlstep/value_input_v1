import 'package:flutter/material.dart';

import './page_one.dart';
import './page_two.dart';
import './page_three.dart';
import './page_four.dart';
import './page_five.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 5, child: InputPage()),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(tabs: [
          Tab(
            text: 'One',
          ),
          Tab(
            text: 'Two',
          ),
          Tab(
            text: 'Three',
          ),
          Tab(
            text: 'Four',
          ),
          Tab(
            text: 'five',
          ),
        ]),
        title: const Text('Input Page'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          height: 600,
          child: TabBarView(children: [
            PageOne(),
            PageTwo(),
            PageThree(),
            PageFour(),
            PageFive(),
          ]),
        ),
      ),
    );
  }
}
