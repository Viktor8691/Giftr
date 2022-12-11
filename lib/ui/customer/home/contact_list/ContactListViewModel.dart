import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:giftr/core/data/network/module/customer/gift/SendGiftReq.dart';
import 'package:giftr/core/data/network/module/customer/product/GetProductRes.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/utils/Utils.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../../base/BaseViewModel.dart';
import '../../../../constants/AppConstants.dart';
import '../../../../main.dart';
import 'ContactListInteractor.dart';

@injectable
class ContactListViewModel extends BaseViewModel {

  ContactListInteractor _interactor;
  ContactListViewModel(this._interactor);

  late Product product;
  int _prevIndex = -1;

  List<KtPair<Contact, bool>> contacts = [];
  Contact? _contact;

  @override
  void init() {
    _getContacts();
  }

  void _getContacts() async{
    final _contacts = await _interactor.getContacts();
    _contacts?.let((it) {
      if (it.isNotEmpty){
        it.kt.map((e) {
          contacts.add(KtPair(e, false));
        });
        notifyListeners();
      }
    });
  }

  void selectContact(int position){
    if (_prevIndex < 0){
      contacts[position] = KtPair(contacts[position].first, true);
    }else {
      contacts[_prevIndex] = KtPair(contacts[_prevIndex].first, false);
      contacts[position] = KtPair(contacts[position].first, true);
    }

    _contact = contacts[position].first;
    _prevIndex = position;
    notifyListeners();
  }

  void confirm() async {
    if (_contact == null) {
      showMyAlertDialog('Select a friend', 'Please select friend thta you sent to send gift.');
      return;
    }

    final request = SendGiftReq(
        appUser!.id,
        _contact!.phones.first.number,
        _contact!.displayName,
        product.id,
        product.merchant_id);

    final response = await _interactor.sendGift(request);
    response?.let((p0) {
      'You sent gift to ${_contact!.displayName}'.showToast;
      appRouter.pop();
    });
  }
}