import 'package:flutter/material.dart';
import 'package:sonyshop/models/productModel.dart';
import 'package:sonyshop/screens/productDetail.dart';
import 'package:sonyshop/util/themeStyle.dart';
import 'package:sonyshop/widgets/productItem.dart';

class ProductWidget extends StatefulWidget {
  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("WHAT'S NEW ?", style: ThemeStyle.productInfo),
          ),
          SizedBox(height: 10),
          Container(
            height: 480,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index){
                ProductModel productModel = products[index];
                return Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ProductItem(
                    productModel: productModel,
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ProductDetail(
                          productModel: productModel,
                        )
                      ));
                    },
                  ),
                );
              },
            ),
          )
        ],
    );
  }
}