import 'package:flutter/material.dart';
import 'package:posttest4_2009106066_benny_hernanda_putra/LandingPage.dart';

import '../MainPage.dart';
import 'list/colors.dart';

class newOrderCompo extends StatefulWidget {
  const newOrderCompo({Key? key}) : super(key: key);

  @override
  State<newOrderCompo> createState() => _newOrderCompoState();
}

enum Durasi { regular, express }

class _newOrderCompoState extends State<newOrderCompo> {
  String alamatUser = '';
  Durasi durasi = Durasi.regular;
  final ctrlAlamatUser = TextEditingController();
  bool isPewangi = false;

  String getDurasi(Durasi? value) {
    if (value == Durasi.express) {
      return "Express (1 Hari)";
    } else if (value == Durasi.regular) {
      return "Regular (2-3 Hari)";
    }
    return '????';
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            controller: ctrlAlamatUser,
            style: TextStyle(
              color: DarkGrey,
            ),
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                hintText: "Isi Alamat",
                labelText: "Alamat"),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.only(
            left: 35,
          ),
          child: Text(
            "Pilih Paket: ",
            style: TextStyle(
              color: DarkGrey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text(
              'Regular (2-3 Hari)',
              style: TextStyle(
                color: DarkGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Radio(
              activeColor: DarkBlue,
              groupValue: durasi,
              value: Durasi.regular,
              onChanged: (Durasi? value) {
                setState(() {
                  durasi = value!;
                });
              },
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text(
              'Express (1 Hari)',
              style: TextStyle(
                color: DarkGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Radio(
              activeColor: DarkBlue,
              groupValue: durasi,
              value: Durasi.express,
              onChanged: (Durasi? value) {
                setState(() {
                  durasi = value!;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        CheckboxListTile(
          contentPadding: EdgeInsets.only(
            left: 20,
          ),
          title: Text(
            "Beli Pewangi Tambahan?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: DarkGrey,
            ),
          ),
          value: isPewangi,
          checkColor: LightBlue,
          activeColor: Colors.white,
          controlAffinity: ListTileControlAffinity.leading,
          tileColor: Colors.white,
          onChanged: (bool? value) {
            setState(() {
              isPewangi = value!;
            });
          },
        ),
        SizedBox(
          height: 80,
        ),
        Container(
          height: 80,
          padding: EdgeInsets.only(left: 70, right: 70, bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              primary: DarkBlue, // background
              onPrimary: Colors.white,
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
                        color: DarkGrey,
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
                              color: DarkGrey,
                            ),
                          ),
                          Text(
                            "Paket : ${getDurasi(durasi)}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: DarkGrey,
                            ),
                          ),
                          Text(
                            "Beli Pewangi Tambahan? : ${isPewangi ? "Ya (+ 20k)" : "Tidak"}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: DarkGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(
                          context,
                          'Cancel',
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: DarkGrey,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => LandingPage(),
                          ),
                        ),
                        child: const Text(
                          'OK',
                          style: TextStyle(
                            color: DarkGrey,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              "PROCEED",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
