import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class TimeConverterPage extends StatefulWidget {
  @override
  _TimeConverterPageState createState() => _TimeConverterPageState();
}

class _TimeConverterPageState extends State<TimeConverterPage> {
  DateTime _dateTime = DateTime.now();
  String _wibTime = '';
  String _witTime = '';
  String _witaTime = '';
  String _londonTime = '';

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
  }

  void _convertTime() {
    final String wibTimeZone = 'Asia/Jakarta';
    final String witTimeZone = 'Asia/Jayapura';
    final String witaTimeZone = 'Asia/Makassar';
    final String londonTimeZone = 'Europe/London';

    tz.TZDateTime wibDateTime =
    tz.TZDateTime.from(_dateTime, tz.getLocation(wibTimeZone));
    tz.TZDateTime witDateTime =
    tz.TZDateTime.from(_dateTime, tz.getLocation(witTimeZone));
    tz.TZDateTime witaDateTime =
    tz.TZDateTime.from(_dateTime, tz.getLocation(witaTimeZone));
    tz.TZDateTime londonDateTime =
    tz.TZDateTime.from(_dateTime, tz.getLocation(londonTimeZone));

    DateFormat formatter = DateFormat('HH:mm');

    setState(() {
      _wibTime = formatter.format(wibDateTime);
      _witTime = formatter.format(witDateTime);
      _witaTime = formatter.format(witaDateTime);
      _londonTime = formatter.format(londonDateTime);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konversi Waktu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Waktu Sekarang:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              DateFormat('dd-MM-yyyy || HH:mm').format(_dateTime),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _convertTime();
              },
              child: Text('Konversi Waktu'),
            ),
            SizedBox(height: 20),
            Text(
              'Waktu Konversi:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'WIB: $_wibTime',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'WIT: $_witTime',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'WITA: $_witaTime',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'London: $_londonTime',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
