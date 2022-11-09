import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

abstract class BaseViewModel extends ChangeNotifier {
  BaseViewModel({Key? key}){
    init();
  }

  void init();
}