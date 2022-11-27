import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final TextEditingController _controllerRed = TextEditingController();
  final TextEditingController _controllerAmber = TextEditingController();
  final TextEditingController _controllerGreen = TextEditingController();
  bool _isSelectedRed = false;
  bool _isSelectedAmber = false;
  bool _isSelectedGreen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isSelectedRed = !_isSelectedRed;
              _isSelectedAmber = false;
              _isSelectedGreen = false;
            });
          },
          child: _isSelectedRed
              ? Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red[100],
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 1.5,
                    ),
                    controller: _controllerRed,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        labelText: 'input a value',
                        labelStyle: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                )
              : Container(
                  width: 320,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red[200],
                  ),
                  child: Text('input is off'),
                ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isSelectedRed = false;
              _isSelectedAmber = !_isSelectedAmber;
              _isSelectedGreen = false;
            });
          },
          child: _isSelectedAmber
              ? Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber[100],
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 1.5,
                    ),
                    controller: _controllerAmber,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        labelText: 'input a value',
                        labelStyle: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                )
              : Container(
                  width: 320,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber[200],
                  ),
                  child: Text('input is off'),
                ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isSelectedRed = false;
              _isSelectedAmber = false;
              _isSelectedGreen = !_isSelectedGreen;
            });
          },
          child: _isSelectedGreen
              ? Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[100],
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 1.5,
                    ),
                    controller: _controllerGreen,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        labelText: 'input a value',
                        labelStyle: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                )
              : Container(
                  width: 320,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[200],
                  ),
                  child: Text('input is off'),
                ),
        ),
        const SizedBox(
          height: 140,
        ),
      ],
    );
  }
}
