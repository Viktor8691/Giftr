import 'package:flutter/material.dart';

extension ContenxtExtension on BuildContext {
  Size get getScreenSize =>
      Size(MediaQuery.of(this).size.width, MediaQuery.of(this).size.height);
}

typedef StringToFunc = void Function(String?);
extension ObjectExt<T> on T {
  R let<R> (R Function(T it) op) => op(this);
}