import 'package:flutter/material.dart';

import 'package:currency_picker/currency_picker.dart';

class PageFour extends StatefulWidget {
  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  String? _selectedCurrencyName;
  String? _selectedCurrencyFlag;
  String? _selectedCurrencyCode;
  String namedCurrency = 'USD';
  var currencies = ['EUR', 'GBP', 'USD'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showCurrencyPicker(
              context: context,
              showFlag: true,
              showSearchField: false,
              showCurrencyName: true,
              showCurrencyCode: true,
              onSelect: (Currency currency) {
                setState(() {
                  _selectedCurrencyName = (currency.name).toString();
                  _selectedCurrencyFlag =
                      (CurrencyUtils.currencyToEmoji(currency));
                  _selectedCurrencyCode = (currency.code);
                });

                print('selected currency: ${currency.name}');
                print(_selectedCurrencyName);
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
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.amber,
          ),
        ),
        IconButton(
          iconSize: 40,
          onPressed: () {
            showCurrencyPicker(
              context: context,
              showFlag: true,
              showSearchField: false,
              showCurrencyName: true,
              showCurrencyCode: true,
              onSelect: (Currency currency) {
                setState(() {
                  _selectedCurrencyName = (currency.name).toString();
                  _selectedCurrencyFlag =
                      (CurrencyUtils.currencyToEmoji(currency));
                  _selectedCurrencyCode = (currency.code);
                });

                print('selected currency: ${currency.name}');
                print(_selectedCurrencyName);
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
          icon: CircleAvatar(
            radius: 30,
            child: Text(
              '$_selectedCurrencyFlag',
              style: TextStyle(fontSize: 40),
            ),
            backgroundColor: Colors.black,
          ),
        ),
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
                  _selectedCurrencyName = (currency.name).toString();
                  _selectedCurrencyFlag =
                      (CurrencyUtils.currencyToEmoji(currency));
                  _selectedCurrencyCode = (currency.code);
                });

                print('selected currency: ${currency.name}');
                print(_selectedCurrencyName);
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
        Text(
          '$_selectedCurrencyName',
        ),
        Text(
          '$_selectedCurrencyCode',
        ),
        Text(
          '$_selectedCurrencyFlag',
          style: TextStyle(fontSize: 40),
        ),
        SizedBox(
          height: 20,
        ),
        DropdownButton(
          items: currencies.map((String dropDownItem) {
            return DropdownMenuItem<String>(
              value: dropDownItem,
              child: Text(dropDownItem),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              namedCurrency = value.toString();
            });
          },
          value: namedCurrency,
        )
      ],
    );
  }
}
