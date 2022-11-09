import 'package:flutter_easyloading/flutter_easyloading.dart';

abstract class Interactor {
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