import 'dart:convert';

import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/customer/gift/SendGiftRes.dart';
import 'package:giftr/core/data/network/repository/customer/GiftRepo.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/data/network/module/customer/gift/SendGiftReq.dart';

@injectable
class ContactListInteractor extends Interactor {
  GiftRepo _giftRepo;
  ContactListInteractor(this._giftRepo);

  Future<List<Contact>?> getContacts() async {
    showLoading();
    if (await FlutterContacts.requestPermission()) {
      List<Contact> _contacts = await FlutterContacts.getContacts(withProperties: true, withPhoto: true);
      hideLoading();
      return _contacts;
    }
  }

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
}