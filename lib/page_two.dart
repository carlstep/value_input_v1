import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  get _controllerTwo => null;

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool _textFieldOneIsSelected = false;
  bool _textFieldTwoIsSelected = false;
  bool _textFieldThreeIsSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: 250,
          color: Colors.blue[200],
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (_textFieldOneIsSelected == true) {
                  _textFieldOneIsSelected = !_textFieldOneIsSelected;
                }
              });
            },
            child: _textFieldOneIsSelected
                ? TextField()
                : Text('TextField 1 is not tapped'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          width: 250,
          color: Colors.green[200],
          child: GestureDetector(
            onTap: () {
              setState(() {
                _textFieldTwoIsSelected = !_textFieldTwoIsSelected;
              });
            },
            child: _textFieldTwoIsSelected
                ? TextField()
                : Text('TextField 2 is not tapped'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          width: 250,
          color: Colors.red[200],
          child: GestureDetector(
            onTap: () {
              setState(() {
                _textFieldThreeIsSelected = !_textFieldThreeIsSelected;
              });
            },
            child: _textFieldThreeIsSelected
                ? TextField()
                : Text('TextField 3 is not tapped'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
