import 'package:flutter/material.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';

Drawer DrawerMenu(BuildContext context) => Drawer(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      50.toVerticalSizedBox,
      Row(
        children: [
          Container(
            width: 70, height: 70,
            margin: EdgeInsets.only(left: 20, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              color: Colors.black45
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              'Gael Gatien'.toText(),
              10.toVerticalSizedBox,
              '@oyon abessole'.toText()
            ],
          )
        ],
      ),
      20.toVerticalSizedBox,
      1.toHLine,
      5.toVerticalSizedBox,
      1.toHLine,

      'Feed'.toTextButton(() {}),
      'Video'.toTextButton(() {}),
      'Events'.toTextButton(() {}),
      'Fungifts'.toTextButton(() {}),
      'Photos'.toTextButton(() {}),
      'Birthdays'.toTextButton(() {}),

      20.toVerticalSizedBox,
      1.toHLine,
      20.toVerticalSizedBox,
      Row(
        children: [
          10.toHorizontalSizedBox,
          Icon(Icons.settings),
          'My Account'.toTextButton(() {}, color: Colors.black54)
        ],
      ),
      10.toVerticalSizedBox,
      Row(
        children: [
          10.toHorizontalSizedBox,
          Icon(Icons.login),
          'Logout'.toTextButton(() {}, color: Colors.black54)
        ],
      )
    ],
  ),
);