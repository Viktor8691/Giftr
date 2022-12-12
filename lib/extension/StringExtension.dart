import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:giftr/constants/AppColors.dart';
import 'package:cached_network_image/cached_network_image.dart';

doPrint(dynamic object) {
  kDebugMode ? print(object) : {};
}

extension StringExtension on String {

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

  TextSpan toTextSpan({TextStyle? style, Function? onTap}) => TextSpan(
    text: this,
    style: style,
    recognizer: TapGestureRecognizer()..onTap = () async {
      onTap?.call();
    }
  );

  SizedBox toSearchBar() => SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
            hintText: this,
            prefixIcon: Icon(Icons.search),
            fillColor: Colors.white, filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5)
        ),
  ));

  get showToast => Fluttertoast.showToast(
      msg: this,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16.0
  );

  ClipRRect toNetworkImage({double? width, double? height, double borderRadius = 5}) => ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      child: CachedNetworkImage(
        imageUrl: this,
        fit: BoxFit.cover, width: width, height: height,
        progressIndicatorBuilder: (context, url, downloadProgress) => Center(
          child: SizedBox(
              width: 20, height: 20,
              child: CircularProgressIndicator(strokeWidth: 2,)),
        ),
        errorWidget: (context, url, error) =>  Image(image: const AssetImage("assets/image/default_img.png"), width: width, height: height, fit: BoxFit.cover,),
      ));
}