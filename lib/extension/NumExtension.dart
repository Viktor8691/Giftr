import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NumExtension on num {
  SizedBox get toSizedBox => SizedBox(
    width: h,
    height: w,
  );
  SizedBox get toVerticalSizedBox => SizedBox(height: h);
  SizedBox get toHorizontalSizedBox => SizedBox(width: w,);

  Container get toHLine =>  Container(width: double.infinity, height: h, color: Colors.black12);
}
