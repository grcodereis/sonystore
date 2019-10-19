import 'package:flutter/material.dart';
import 'package:sonyshop/components/customButton.dart';
import 'package:sonyshop/components/largeButton.dart';
import 'package:sonyshop/models/productModel.dart';
import 'package:sonyshop/util/themeColor.dart';
import 'package:sonyshop/util/themeStyle.dart';

class ProductDetail extends StatefulWidget {

  final ProductModel productModel;

  const ProductDetail({Key key, this.productModel}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.primaryColor,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      color: ThemeColor.secondaryColor,
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                    CustomButton(
                      icon: Icon(Icons.favorite, color: ThemeColor.accentColor),
                      color: ThemeColor.secondaryColor,
                    )
                  ],
                ),
              ),

              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 70,
                      child: Container(
                        width: 200,
                        child: Hero(
                          tag: widget.productModel.tag,
                          child: Image.asset(widget.productModel.img, fit: BoxFit.cover),
                        ),
                      ),
                    ),

                  widget.productModel.isBatery ?  Positioned(
                      left: 20,
                      top: 1,
                      child: Container(
                        width: 80,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ThemeColor.secondaryColor
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Batery", style: TextStyle(color: ThemeColor.fontColor)),
                            Text("30h", style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ) : Container()
                    
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  decoration: BoxDecoration(
                    color: ThemeColor.secondaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.productModel.title, style: ThemeStyle.productDetailTitle),
                      SizedBox(height: 12),
                      Text("\$${widget.productModel.price}",style: ThemeStyle.productDetailPrice),
                      SizedBox(height: 12),
                      Text(widget.productModel.description, style: ThemeStyle.productDetailDescription),
                      SizedBox(height: 40),
                      LargeButton(
                        title: "Add to cart",
                      )
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
    );
  }
}