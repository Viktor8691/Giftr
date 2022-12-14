import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetSentGiftReq.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetSentGiftRes.dart';
import 'package:giftr/core/data/network/module/customer/gift/SendGiftRes.dart';
import 'package:giftr/core/data/network/repository/customer/GiftRepo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/customer/gift/SendGiftReq.dart';

@injectable
class FriendGiftInteractor extends Interactor {
  final GiftRepo _giftRepo;
  FriendGiftInteractor(this._giftRepo);

  Future<SendGiftRes?> sendGift(SendGiftReq request) async {
    showLoading();
    final response = await _giftRepo.sendGift(request);
    hideLoading();
    return response.fold((l) {
      return null;
    }, (r) {
      return SendGiftRes.fromJson(r.data);
    });
  }

  Future<List<Gift>> getSentGifts(GetSentGiftReq request) async {
    showLoading();
    final response = await  _giftRepo.getSentGifts(request);
    hideLoading();

    return response.fold((l) {
      return List.empty();
    }, (r) {
      final response = GetSentGiftRes.fromJson(r.data);
      return response.data.gifts;
    });
  }
}