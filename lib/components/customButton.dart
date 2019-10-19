import 'package:flutter/material.dart';
import 'package:sonyshop/util/themeColor.dart';

class CustomButton extends StatelessWidget {

  final Widget icon;
  final Function onTap;
  final Color color;
  final bool isNotify;

  const CustomButton({Key key, this.icon, this.onTap, this.color, this.isNotify = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle
              ),
              child: icon,
            ),

          isNotify ? Positioned(
              top: 2,
              right: 2,
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: ThemeColor.accentColor,
                  shape: BoxShape.circle
                ),
              ),
            ) : Container()

          ],
        ),
    );
  }
}