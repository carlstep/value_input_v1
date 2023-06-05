import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.all(15),
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
                                  borderRadius: BorderRadius.circular(10),
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
                      right: 0,
                      child: CircleAvatar(
                        radius: 30,
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
                padding: const EdgeInsets.all(15),
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
                                  borderRadius: BorderRadius.circular(10),
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
                      right: 0,
                      child: CircleAvatar(
                        radius: 30,
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
                padding: const EdgeInsets.all(15),
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
                                  borderRadius: BorderRadius.circular(10),
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
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 200,
                                  color: Colors.amber[50],
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const Text('Modal BottomSheet'),
                                        ListTile(
                                          title: Text('option 1'),
                                        ),
                                        ListTile(
                                          title: Text('option 2'),
                                        ),
                                        ListTile(
                                          title: Text('option 3'),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          });
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/flags/usa.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // const SizedBox(
        //   height: 100,
        // ),
        BottomSheetExample(),
      ],
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
