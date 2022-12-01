import 'package:flutter/material.dart';

import 'package:currency_picker/currency_picker.dart';

class PageThree extends StatefulWidget {
  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 340,
              height: 140,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      child: GestureDetector(
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
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red[100],
                                ),
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 40,
                                    letterSpacing: 1.5,
                                  ),
                                  controller: _controllerRed,
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  decoration: InputDecoration(
                                    labelText: 'input a value',
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: 300,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red[200],
                                ),
                                child: Text('input is off'),
                              ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.red,
                        backgroundImage: AssetImage('assets/flags/kenya.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 340,
              height: 140,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      child: GestureDetector(
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
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.amber[100],
                                ),
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 40,
                                    letterSpacing: 1.5,
                                  ),
                                  controller: _controllerAmber,
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  decoration: InputDecoration(
                                    labelText: 'input a value',
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: 300,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber[200],
                                ),
                                child: Text('input is off'),
                              ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                        backgroundImage: AssetImage('assets/flags/greece.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 340,
              height: 140,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      child: GestureDetector(
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
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.green[100],
                                ),
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 40,
                                    letterSpacing: 1.5,
                                  ),
                                  controller: _controllerGreen,
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  decoration: InputDecoration(
                                    labelText: 'input a value',
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: 300,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green[200],
                                ),
                                child: Text('input is off'),
                              ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                        backgroundImage: AssetImage('assets/flags/usa.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
