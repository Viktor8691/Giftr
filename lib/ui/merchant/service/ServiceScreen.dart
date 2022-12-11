import 'package:flutter/material.dart';
import 'package:giftr/constants/AppColors.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/extension/WidgetExtension.dart';

class ServiceScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary, elevation: 1,
        title: Text('Service').toCenter(),
      ),
      body: Column(
        children: [
          100.toVerticalSizedBox,
          Icon(Icons.qr_code_2_outlined, size: 250,),
          20.toVerticalSizedBox,
          'XX376471257987'.toText(fontSize: 20),
        ],
      ).toCenter(),
    );
  }
}
