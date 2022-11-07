import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

abstract class BaseViewModel extends ChangeNotifier {
  BaseViewModel({Key? key}){
    init();
  }

  void init();

  void showLoading(){
    if (!EasyLoading.isShow) {
      EasyLoading.show();
    }
  }

  void hideLoading(){
    if (EasyLoading.isShow){
      EasyLoading.dismiss();
    }
  }
}