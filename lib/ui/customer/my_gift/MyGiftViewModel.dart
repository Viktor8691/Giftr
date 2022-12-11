import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetReceivedGiftReq.dart';
import 'package:giftr/ui/customer/my_gift/MyGiftInteractor.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/customer/gift/GetSentGiftRes.dart';

@injectable
class MyGiftViewModel extends BaseViewModel {

  final MyGiftInteractor _interactor;
  MyGiftViewModel(this._interactor);

  List<Gift> gifts = [];

  @override
  void init() {
    getReceivedGifts();
  }

  void getReceivedGifts() async {
    final request = GetReceivedGiftReq(appUser!.phone_no);
    final response = await _interactor.getReceivedGifts(request);
    gifts.addAll(response);
    notifyListeners();
  }
}