
import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetSentGiftReq.dart';
import 'package:giftr/core/data/network/module/customer/gift/SendGiftReq.dart';
import 'package:giftr/extension/Extension.dart';
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

  void sendGift(int position) async  {
    final gift = gifts[position];
    final request = SendGiftReq(appUser!.id, gift.friendPhone, gift.friendName, gift.product.id, gift.merchantId);
    final response = await _interactor.sendGift(request);
    response?.let((it) {
      getGifts();
    });
  }

  void getGifts() async{
    gifts.clear();
    final request = GetSentGiftReq(appUser!.id);
    final response = await _interactor.getSentGifts(request);
    gifts.addAll(response);
    notifyListeners();
  }
}