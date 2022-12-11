import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetReceivedGiftReq.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetReceivedGiftRes.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetSentGiftRes.dart';
import 'package:giftr/core/data/network/repository/customer/GiftRepo.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyGiftInteractor extends Interactor {
  final GiftRepo _giftRepo;
  MyGiftInteractor(this._giftRepo);

  Future<List<Gift>> getReceivedGifts(GetReceivedGiftReq request) async{
    showLoading();
    final response = await _giftRepo.getReceivedGifts(request);
    hideLoading();

    return response.fold((l) {
      return List.empty();
    }, (r) {
      return GetReceivedGiftRes.fromJson(r.data).data.gifts;
    });
  }
}