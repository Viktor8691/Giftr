import 'package:flutter/material.dart';

extension ContenxtExtension on BuildContext {
  Size get getScreenSize =>
      Size(MediaQuery.of(this).size.width, MediaQuery.of(this).size.height);
}