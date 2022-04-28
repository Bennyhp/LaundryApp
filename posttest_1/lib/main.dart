import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(home: PageSaya()));
}

class PageSaya extends StatelessWidget {
  const PageSaya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Posttest 1 Benny"),
      ),
      body: Container(
        width: mediaQueryWidth,
        height: mediaQueryHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.2,
              0.4,
              0.7,
            ],
            colors: [
              Color.fromARGB(255, 21, 29, 59),
              Color.fromARGB(255, 21, 29, 75),
              Color.fromARGB(255, 216, 33, 72),
            ],
          ),
          border: Border.all(
            color: const Color.fromARGB(255, 255, 255, 255),
            width: 10,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Text(
          "BENNY HERNANDA PUTRA",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
