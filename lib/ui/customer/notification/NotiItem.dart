import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giftr/core/data/network/module/notification/GetCustomerNotiRes.dart' as noti;
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/extension/WidgetExtension.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

Widget NotiItem(noti.Notification item, {required Function onDelete}) => Slidable(
  endActionPane: ActionPane(
    motion: ScrollMotion(),
    children: [
      SlidableAction(onPressed: (context) {
        onDelete.call();
      }, icon: Icons.delete, backgroundColor: Colors.red)
    ],
  ),
  child:   Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(width: 1, color: Colors.black12)),
      color: Colors.white
    ),
    child: [
      item.title.toText(fontSize: 18, isBold: true, color: Colors.orange),
      3.toVerticalSizedBox,
      item.content.toText(color: Colors.black54)
    ].toColumn(),
  ),
);