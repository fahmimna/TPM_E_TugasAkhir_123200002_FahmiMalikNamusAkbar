import 'package:flutter/material.dart';

class PesanKesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesan dan Kesan'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Pesan'),
            subtitle: Text('Terimakasih Banyak Atas Ilmu dan Bimbingannya, Bapak'),
          ),
          ListTile(
            title: Text('Kesan'),
            subtitle: Text('Sangat terkesan dengan pembelajaran selama satu semester ini'),
          ),
        ],
      ),
    );
  }
}
