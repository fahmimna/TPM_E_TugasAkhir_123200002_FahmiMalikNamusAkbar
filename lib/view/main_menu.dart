import 'package:flutter/material.dart';
import 'package:tugas2/main.dart';
import 'package:tugas2/view/home_page.dart';
import 'package:tugas2/view/register_page.dart';
import 'profil.dart';
import 'konversi_uang.dart';
import 'konversi_waktu.dart';
import 'pesan_kesan.dart';
import 'home_page.dart';

class MainMenu extends StatelessWidget {
  final String username;
  final bool isLogin;

  const MainMenu({Key? key, required this.username,required this.isLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Main Menu'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profil(
                          name1: "Fahmi Malik Namus Akbar",
                          nim1: "123200002",
                          photoUrl1:
                          "https://1.bp.blogspot.com/-EZHGhDzkUFY/X5bZdhQ1e7I/AAAAAAAAEIs/o0QnOT08UXY0M6s7T_-u18BqaQhw6Y9jgCLcBGAsYHQ/s1280/IMG-20200410-WA0056.jpg"),
                    ),
                  );
                },
                child: Text('Profil'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PesanKesan(),
                    ),
                  );
                },
                child: Text('Pesan dan Kesan'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text('Resep Makanan'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TimeConverterPage(),
                    ),
                  );
                },
                child: Text('Konversi Waktu'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CurrencyConverterPage(),
                    ),
                  );
                },
                child: Text('Konversi Mata Uang'),
              ),
            ],
          ),
        ));
  }
}
