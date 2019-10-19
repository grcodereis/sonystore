import 'package:flutter/material.dart';
import 'package:sonyshop/components/customButton.dart';
import 'package:sonyshop/util/themeColor.dart';
import 'package:sonyshop/util/themeStyle.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("HeadPhones", style: ThemeStyle.homeTitle),
              CustomButton(
                color: ThemeColor.secondaryColor,
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                isNotify: true,
              )
            ],
          ),
        ),
    );
  }
}