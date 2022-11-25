import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  get _controllerOne => null;

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final TextEditingController _controllerOne = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controllerOne.addListener(() {
      final String text = _controllerOne.text.toLowerCase();
      _controllerOne.value = _controllerOne.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _controllerOne.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.lightBlue[100],
            ),
            child: TextField(
              controller: widget._controllerOne,
              keyboardType: TextInputType.numberWithOptions(signed: true),
              decoration: const InputDecoration(
                  labelText: 'input value A / display value in B & C'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow[100],
            ),
            child: TextField(
              controller: widget._controllerOne,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                  labelText: 'input value B / display value in A & C'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green[100],
            ),
            child: TextField(
              controller: widget._controllerOne,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                  labelText: 'input value C / display value in B & A'),
            ),
          ),
        ],
      ),
    );
  }
}
