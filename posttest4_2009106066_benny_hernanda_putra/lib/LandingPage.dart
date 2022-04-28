import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'components/list/colors.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkBlue,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: MainBgColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          spreadRadius: 20,
                          blurRadius: 15,
                          offset: Offset(5, 7),
                        ),
                      ],
                    ),
                    child: Image.asset("assets/icons/512x512bb.jpg"),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "LAUNDRY APP",
                  style: TextStyle(
                    color: MainBgColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    shadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(5, 7),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "By Benny Hernanda Putra",
                  style: TextStyle(
                    color: Colors.white30,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 110,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MainPage(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.blue[400],
                      backgroundColor: MainBgColor,
                      onSurface: Colors.blue,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      elevation: 5,
                      fixedSize: Size(170, 55)),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: DarkGrey,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
