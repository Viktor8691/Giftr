import 'package:flutter/material.dart';

extension WidgetExtension on Widget {

  Container toOutlineContainer({EdgeInsets padding = const EdgeInsets.only(left: 15, right: 15)}) => Container(
      padding: padding,
      child: this,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black26
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5))
      )
  );

  Column toColumn() => Column(
    children: [this],
  );
}