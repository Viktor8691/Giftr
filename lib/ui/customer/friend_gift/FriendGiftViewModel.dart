
import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetSentGiftReq.dart';
import 'package:giftr/ui/customer/friend_gift/FriendGiftInteractor.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/customer/gift/GetSentGiftRes.dart';

@injectable
class FriendGiftViewModel extends BaseViewModel{

  final FriendGiftInteractor _interactor;
  FriendGiftViewModel(this._interactor);

  List<Gift> gifts = [];

  @override
  void init() {
    getGifts();
  }

  void getGifts() async{
    final request = GetSentGiftReq(appUser!.id);
    final response = await _interactor.getSentGifts(request);
    gifts.addAll(response);
    notifyListeners();
  }
}