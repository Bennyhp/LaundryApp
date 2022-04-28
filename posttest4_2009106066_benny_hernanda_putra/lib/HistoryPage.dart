import 'package:flutter/material.dart';
import 'package:posttest4_2009106066_benny_hernanda_putra/components/list/colors.dart';

class historyPage extends StatelessWidget {
  const historyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "History",
            style: TextStyle(
              color: DarkGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: DarkGrey),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: MainBgColor,
    );
  }
}
