import 'package:flutter/material.dart';
import 'package:sonyshop/models/productModel.dart';
import 'package:sonyshop/util/themeColor.dart';
import 'package:sonyshop/util/themeStyle.dart';

class ProductItem extends StatelessWidget {

  final ProductModel productModel;
  final Function onTap;

  const ProductItem({Key key, this.productModel, this.onTap}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 40,
              child: Text(productModel.title, style: ThemeStyle.productTitle),
            ),
            SizedBox(height: 20),
            Container(
              height: 380,
              decoration: BoxDecoration(
                color: ThemeColor.secondaryColor,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Hero(
                tag: productModel.tag,
                child: Container(
                  padding: EdgeInsets.all(40),
                  child: Image.asset(productModel.img),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}