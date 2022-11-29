import 'package:flutter/material.dart';

import 'package:currency_picker/currency_picker.dart';

class PageFour extends StatefulWidget {
  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  String? _selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            showCurrencyPicker(
              context: context,
              showFlag: true,
              showSearchField: false,
              showCurrencyName: true,
              showCurrencyCode: true,
              onSelect: (Currency currency) {
                setState(() {
                  _selectedCountry = (currency.name).toString();
                });

                print('selected currency: ${currency.name}');
                print(_selectedCountry);
              },
              currencyFilter: <String>[
                'EUR',
                'GBP',
                'AUD',
                'NZD',
                'INR',
                'THB',
                'VND',
                'CNY',
                'CAD',
                'JPY'
              ],
            );
          },
          child: const Text('Show currency picker'),
        ),
        SizedBox(
          height: 40,
        ),
        Text('$_selectedCountry'),
      ],
    );
  }
}
