import 'package:flutter/material.dart';
import 'components/list/colors.dart';
import 'components/newOrderNP.dart';

class detailOrder extends StatefulWidget {
  const detailOrder({Key? key}) : super(key: key);

  @override
  State<detailOrder> createState() => _detailOrderState();
}

class _detailOrderState extends State<detailOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MainBgColor),
      child: Scaffold(
        backgroundColor: MainBgColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: DarkGrey),
          backgroundColor: Colors.white,
          elevation: 1,
          title: Center(
            child: Text(
              "New Order",
              style: TextStyle(
                color: DarkGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: newOrderCompo(),
      ),
    );
  }
}
