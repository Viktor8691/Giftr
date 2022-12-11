
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:giftr/constants/AppColors.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:kt_dart/collection.dart';

Widget ContactItem(KtPair<Contact, bool> contact) => Container(
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
  child: Row(
    children: [
      contact.first.photoOrThumbnail != null ? CircleAvatar(backgroundImage: MemoryImage(contact.first.photoOrThumbnail!),) : Icon(Icons.account_circle_outlined, size: 48,),
      10.toHorizontalSizedBox,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          contact.first.displayName.toText(),
          5.toVerticalSizedBox,
          contact.first.phones.first.number.toText(),
        ],
      ),
      Spacer(),
      Visibility(
        visible: contact.second,
          child: Icon(Icons.check_box, color: AppColors.colorPrimary,)
      ),
    ],
  ),
);