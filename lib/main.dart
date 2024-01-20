import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAS MOBILE PROGRAMMING',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UAS MOBILE PROGRAMMING'),
        backgroundColor: Colors.yellowAccent,
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
                    builder: (context) => PersegiScreen(),
                  ),
                );
              },
              child: Text('Hitung Luas Persegi'),
            ),
            SizedBox(height: 20),
            ColoredBox(color: Color.fromARGB(255, 8, 2, 17)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LingkaranScreen(),
                  ),
                );
              },
              child: Text('Hitung Luas Lingkaran'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeveloperScreen(),
                  ),
                );
              },
              child: Text('Profile Developer'),
            ),
          ],
        ),
      ),
    );
  }
}

class PersegiScreen extends StatefulWidget {
  @override
  _PersegiScreenState createState() => _PersegiScreenState();
}

class _PersegiScreenState extends State<PersegiScreen> {
  TextEditingController panjangController = TextEditingController();
  TextEditingController lebarController = TextEditingController();
  double luas = 0;

  void hitungLuas() {
    double panjang = double.parse(panjangController.text);
    double lebar = double.parse(lebarController.text);
    double hasil = panjang * lebar;

    setState(() {
      luas = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Persegi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: panjangController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Panjang'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: lebarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Lebar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                hitungLuas();
              },
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            Text('Luas Persegi: $luas'),
          ],
        ),
      ),
    );
  }
}

class LingkaranScreen extends StatefulWidget {
  @override
  _LingkaranScreenState createState() => _LingkaranScreenState();
}

class _LingkaranScreenState extends State<LingkaranScreen> {
  TextEditingController jariJariController = TextEditingController();
  double luas = 0;

  void hitungLuas() {
    double jariJari = double.parse(jariJariController.text);
    double hasil = pi * jariJari * jariJari;

    setState(() {
      luas = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Lingkaran'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: jariJariController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Jari-Jari'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                hitungLuas();
              },
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            Text('Luas Lingkaran: $luas'),
          ],
        ),
      ),
    );
  }
}

class DeveloperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile Developer'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.amberAccent,
                  backgroundImage: AssetImage('assets/images/ff.jpeg'),
                  radius: 70.0,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Nama : Tahriani',
                        hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.teal,
                        ))),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'NPM : 2110020010',
                        hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.teal,
                        ))),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Kelas : SI NonReg BJB 5A',
                        hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.teal,
                        ))),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Alamat : Pelaihari',
                        hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.teal,
                        ))),        
                
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kembali'),
                )
              ],
            ),
          ),
        ));
  }
}
