import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:giftr/constants/AppColors.dart';

extension StringExtension on String {

  doPrint() {
    kDebugMode ? print(this) : {};
  }

  Image toAssetImage({double? width, double? height}) => Image.asset(this, width: width, height: height,);

  Text toText({
    double? fontSize = 15,
    Color? color = Colors.black87,
    bool isBold = false
  }) => Text(this, style: TextStyle(fontSize: fontSize, color: color, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),);

  TextField toTextField(Function(String) onChanged, { TextInputType? inputType, bool? isObscureText }) => TextField(
      onChanged: (text) => onChanged(text),
      maxLines: 1,
      obscureText: isObscureText ?? false,
      keyboardType: inputType,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(this),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10)
      )
  );

  SizedBox toButton(Function onPressed, {double? width, double? height = 45, Color? color = AppColors.colorPrimary}) => SizedBox(
    width: width, height: height,
    child: ElevatedButton(onPressed: () => onPressed.call(),
        child: Text(this),
      style: ElevatedButton.styleFrom(primary: color)
    ),);

  SizedBox toTextButton(Function onPressed, {
    double? width,
    double? height = 45,
    Color? color = Colors.blueAccent,
    double? fontSize = 16
  }) =>
      SizedBox(
        width: width, height: height,
        child: TextButton(onPressed: () => onPressed.call(),
            child: Text(this, style: TextStyle(color: color, fontSize: fontSize),)),
      );
}