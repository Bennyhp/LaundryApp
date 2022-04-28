import 'package:flutter/material.dart';
import 'list/colors.dart';

Drawer drawerMP() {
  return Drawer(
    backgroundColor: MainBgColor,
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: DarkBlue,
          ),
          child: Text(
            "Header Placeholder",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        ListTile(
          title: Text(
            "PlaceHolder 1",
            style: TextStyle(
              color: DarkGrey,
            ),
          ),
          tileColor: Colors.black12,
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            "PlaceHolder 2",
            style: TextStyle(
              color: DarkGrey,
            ),
          ),
          tileColor: Colors.black12,
        ),
      ],
    ),
  );
}
