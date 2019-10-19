import 'package:flutter/material.dart';
import 'package:sonyshop/components/customButton.dart';
import 'package:sonyshop/util/themeColor.dart';
import 'package:sonyshop/util/themeStyle.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          item(Icons.settings, "Custom configuration"),
          item(Icons.star, "Collection of Sony"),
        ],
      ),
    );
  }

  Widget item(IconData iconData, String title){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomButton(
          color: ThemeColor.secondaryColor,
          icon: Icon(iconData, color: Colors.white),
        ),
        SizedBox(width: 10),
        Container(
          width: 106,
          child: Text(title, style: ThemeStyle.footerTile),
        )
      ],
    );
  }
}

