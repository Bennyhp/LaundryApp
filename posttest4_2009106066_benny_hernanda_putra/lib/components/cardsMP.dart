import 'package:flutter/material.dart';
import 'package:posttest4_2009106066_benny_hernanda_putra/components/appBarMP.dart';
import 'package:posttest4_2009106066_benny_hernanda_putra/components/list/colors.dart';
import 'drawerMP.dart';

class cardsMP extends StatelessWidget {
  const cardsMP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DryWash = Image.asset("assets/icons/Hanger.jpg");
    final WashIron = Image.asset("assets/icons/Washing_machine.jpg");
    final Iron = Image.asset("assets/icons/iron.jpg");

    return Scaffold(
      backgroundColor: MainBgColor,
      appBar: appBarMP(),
      drawer: drawerMP(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            width: 370,
            height: 25,
            child: Text(
              "Services",
              style: TextStyle(
                color: DarkGrey,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  width: 140,
                  height: 190,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 10,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 25,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: DryWash,
                          ),
                          Text(
                            "Dry Wash",
                            style: TextStyle(
                              color: LightBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  width: 140,
                  height: 190,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 10,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 25,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: WashIron,
                          ),
                          Text(
                            "Wash & Iron",
                            style: TextStyle(
                              color: LightBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  width: 140,
                  height: 190,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 10,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 25,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Iron,
                          ),
                          Text(
                            "Iron",
                            style: TextStyle(
                              color: LightBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            width: 370,
            height: 25,
            child: Text(
              "Recommended For You",
              style: TextStyle(
                color: DarkGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
            child: Container(
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 10,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Image.asset("assets/promotions/promo1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
