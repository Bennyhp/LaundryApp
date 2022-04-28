import 'package:flutter/material.dart';
import 'list/colors.dart';

AppBar appBarMP() {
  return AppBar(
    iconTheme: IconThemeData(color: DarkGrey),
    backgroundColor: Colors.white,
    title: Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Laundry",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: DarkBlue,
              ),
            ),
            TextSpan(
              text: "App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: DarkGrey,
              ),
            ),
          ],
        ),
      ),
    ),
    elevation: 1,
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications),
      ),
    ],
  );
}
