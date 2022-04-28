// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:posttest2_2009106066_benny_hernanda_putra/list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget myPromos() {
    return Image.asset("assets/promos/promo1.png");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff0fb2ea), Color(0xff40dedf)],
              ),
            ),
          ),
          Positioned(
            top: -90,
            left: 20,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 1.7, left: 16),
                  width: 340,
                  height: 185,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color(0xfff4f9fd),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 12.0,
                        spreadRadius: -10.0,
                        offset: Offset(10, 10),
                      ),
                    ],
                  ),
                  child: FittedBox(
                    child: Image.asset("assets/promos/promo1.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 65,
            margin: EdgeInsets.fromLTRB(0, 26, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: Color(0xfff4f9fd),
            ),
          ),
          Positioned(
            top: 50,
            left: 110,
            child: Text(
              "Benny Hernanda Putra",
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 37, 37),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 50,
            left: 15,
            child: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 37, 37, 37),
              size: 25,
            ),
          ),
          Positioned(
            top: 50,
            right: 15,
            child: Icon(
              Icons.menu,
              color: Color.fromARGB(255, 37, 37, 37),
              size: 25,
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Text(
              "Services",
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 37, 37),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Positioned(
            top: 290,
            left: 37,
            child: Text(
              "Promos",
              style: TextStyle(
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 145,
            child: Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryData.length,
                itemBuilder: (context, index) {
                  bool isSelected = false;
                  if (index == 0) {
                    isSelected = true;
                  }
                  return Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color(0xfff4f9fd),
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: isSelected
                                    ? [
                                        BoxShadow(
                                          blurRadius: 6.0,
                                          spreadRadius: -8.0,
                                          offset: Offset(
                                            0.0,
                                            6.0,
                                          ),
                                        ),
                                      ]
                                    : null),
                            child: Center(
                              child: Image.asset(categoryData[index].imageUrl),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            categoryData[index].name,
                            style: TextStyle(
                                // ignore: prefer_const_constructors
                                color: Color.fromARGB(255, 37, 37, 37),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
