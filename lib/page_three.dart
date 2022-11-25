import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  bool _textFieldOneIsOn = false;
  bool _textFieldTwoIsOn = false;
  // bool _textFieldThreeIsOn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              // Toggle light when tapped.
              _textFieldOneIsOn = !_textFieldOneIsOn;
              _textFieldTwoIsOn = _textFieldTwoIsOn;
              // _textFieldThreeIsOn = _textFieldThreeIsOn;
            });
          },
          child: Container(
            color: _textFieldOneIsOn ? Colors.orange[100] : Colors.red[100],
            padding: const EdgeInsets.all(8),
            // Change button text when light changes state.
            child: _textFieldOneIsOn
                ? TextField(
                    decoration: InputDecoration(labelText: 'TextField Text'),
                  )
                : Text('the target'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              // Toggle light when tapped.
              _textFieldOneIsOn = _textFieldOneIsOn;
              _textFieldTwoIsOn = !_textFieldTwoIsOn;
              // _textFieldThreeIsOn = _textFieldThreeIsOn;
            });
          },
          child: Container(
            padding: EdgeInsets.all(8),
            color: _textFieldTwoIsOn ? Colors.lightBlue[100] : Colors.red[100],
            child: _textFieldTwoIsOn
                ? TextField(
                    decoration: InputDecoration(labelText: 'TextField Text'),
                  )
                : Text('the target'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}



// GestureDetector(
//           onTap: () {
//             setState(() {
//               // Toggle light when tapped.
//               _textFieldOneIsOn = _textFieldOneIsOn;
//               _textFieldTwoIsOn = _textFieldTwoIsOn;
//               _textFieldThreeIsOn = !_textFieldThreeIsOn;
//             });
//           },
//           child: Container(
//             padding: EdgeInsets.all(8),
//             color: _textFieldThreeIsOn ? Colors.green[100] : Colors.red[100],
//             child: _textFieldThreeIsOn
//                 ? TextField(
//                     decoration: InputDecoration(labelText: 'TextField Text'),
//                   )
//                 : Text('the target'),
//           ),
//         ),