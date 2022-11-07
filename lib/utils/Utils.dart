import 'package:flutter/material.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';

import '../main.dart';

showMyAlertDialog(BuildContext context, String title, String message) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                20.toVerticalSizedBox,
                Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                20.toVerticalSizedBox,
                Text(message),
                20.toVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    'CLOSE'.toTextButton(() {
                      appRouter.pop();
                    })
                  ],
                ),
                10.toVerticalSizedBox
              ],
            ),
          ),
        );
      }
  );
}