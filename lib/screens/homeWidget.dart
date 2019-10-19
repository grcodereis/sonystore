import 'package:flutter/material.dart';
import 'package:sonyshop/screens/footerWidget.dart';
import 'package:sonyshop/screens/headerWidget.dart';
import 'package:sonyshop/screens/productWidget.dart';
import 'package:sonyshop/util/themeColor.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            HeaderWidget(),
            ProductWidget(),
            FooterWidget()
          ],
        ),
      ),
    );
  }
}