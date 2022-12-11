import 'package:flutter/material.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';

import '../../../core/data/network/module/customer/product/GetProductRes.dart';


Widget ProductItem(Product product) => Padding(
    padding: EdgeInsets.only(top: 10, ),
    child: Card(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              product.product_images.first.toNetworkImage(width: double.infinity, height: 150),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: product.product_name.toText(color: Colors.orange, fontSize: 18, isBold: true),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: product.description.toText()),
              5.toVerticalSizedBox,
            ],
          ),
          Positioned(
              right: 5, top: 135,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue
                ),
                child: '${product.currency} ${product.prize}'.toText(color: Colors.white),
              ))
        ],),
    ));