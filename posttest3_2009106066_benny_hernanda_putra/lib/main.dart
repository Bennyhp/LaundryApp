// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const CheckoutPage(),
    );
  }
}

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

enum Durasi { regular, express }

class _CheckoutPageState extends State<CheckoutPage> {
  String alamatUser = '';

  Durasi durasi = Durasi.regular;

  final ctrlAlamatUser = TextEditingController();

  bool isPewangi = false;

  @override
  void dispose() {
    ctrlAlamatUser.dispose();
    super.dispose();
  }

  String getDurasi(Durasi? value) {
    if (value == Durasi.express) {
      return "Express (1 Hari/ 2 Jam)";
    } else if (value == Durasi.regular) {
      return "Regular (2-3 Hari)";
    }
    return '????';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.cyan,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "CHECKOUT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Text(
                "Benny Hernanda Putra",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: ctrlAlamatUser,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                hintText: "Isi Alamat",
                labelText: "Alamat",
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 15),
                child: Text(
                  "Pilih Paket: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Regular (2-3 Hari)',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: Colors.white,
                groupValue: durasi,
                value: Durasi.regular,
                onChanged: (Durasi? value) {
                  setState(() {
                    durasi = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(
                'Express (1 Hari/ 2 Jam)',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: Colors.white,
                groupValue: durasi,
                value: Durasi.express,
                onChanged: (Durasi? value) {
                  setState(() {
                    durasi = value!;
                  });
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            CheckboxListTile(
              contentPadding: EdgeInsets.only(left: 20),
              title: Text(
                "Beli Pewangi Pakaian Tambahan?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              value: isPewangi,
              checkColor: Colors.white,
              activeColor: Colors.black,
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  isPewangi = value!;
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 70,
              padding: EdgeInsets.only(left: 50.0, right: 50, bottom: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // background
                  onPrimary: Colors.black,
                ), // foreground,
                onPressed: () {
                  setState(() {
                    alamatUser = ctrlAlamatUser.text;
                  });
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "Apakah Sudah Benar Semua?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        content: SizedBox(
                          height: 100,
                          child: Column(
                            children: [
                              Text(
                                "Alamat : $alamatUser",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Paket : ${getDurasi(durasi)}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Beli Pewangi Tambahan? : ${isPewangi ? "Ya (+ 20k)" : "Tidak"}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  "PROCEED",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
