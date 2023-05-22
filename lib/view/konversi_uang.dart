import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  @override
  _CurrencyConverterPageState createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  double _rupiah = 0;
  double _usd = 0;
  double _eur = 0;
  double _gbp = 0;

  void _convertCurrency(double amount) {
    setState(() {
      _rupiah = amount;
      _usd = amount / 15000; // 1 USD = 15,000 IDR
      _eur = amount / 18000; // 1 EUR = 18,000 IDR
      _gbp = amount / 20000; // 1 GBP = 20,000 IDR
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konversi Mata Uang'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Konversi Rupiah ke Mata Uang Lain',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  double amount = double.parse(value);
                  _convertCurrency(amount);
                } else {
                  setState(() {
                    _rupiah = 0;
                    _usd = 0;
                    _eur = 0;
                    _gbp = 0;
                  });
                }
              },
              decoration: InputDecoration(
                labelText: 'Masukkan Jumlah Rupiah',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'USD: \$$_usd',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'EUR: €$_eur',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'GBP: £$_gbp',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
