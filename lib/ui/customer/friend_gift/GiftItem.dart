import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:giftr/constants/AppColors.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/extension/WidgetExtension.dart';

import '../../../core/data/network/module/customer/gift/GetSentGiftRes.dart';
import '../../../utils/Utils.dart';

Widget GiftItem(Gift item) => Container(
  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  decoration: BoxDecoration(
    border: Border(bottom: BorderSide(width: 1, color: Colors.black12)),
    color: Colors.white
  ),
  child: Column(
    children: [
      [
        [
          ['Name : '.toText(color: AppColors.colorPrimary), item.friendName.toText(fontSize: 18),].toRow(),
          5.toVerticalSizedBox,
          ['Phone : '.toText(color: AppColors.colorPrimary), item.friendPhone.toText(fontSize: 18)].toRow(),
        ].toColumn(),
        Spacer(),
        ['Sent date'.toText(color: AppColors.colorPrimary, fontSize: 13), getTime(item.createdAt).toText(color: Colors.black54, fontSize: 13)].toColumn()
      ].toRow(mainAxisAlignment: MainAxisAlignment.start),

      10.toVerticalSizedBox,
      [
        item.product.product_images.first.toNetworkImage(width: 70, height: 70),
        10.toHorizontalSizedBox,
        [
          item.product.product_name.toText(fontSize: 18, color: Colors.orange, isBold: true),
          3.toVerticalSizedBox,
          '${item.product.currency} ${item.product.prize}'.toText(fontSize: 15)
        ].toColumn(),

        Spacer(),
        [20.toVerticalSizedBox, 'Send Again'.toButton(() {}, height: 40)].toColumn()
      ].toRow(),
      10.toVerticalSizedBox
    ],
  ),
);