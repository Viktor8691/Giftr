import 'package:flutter/material.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetSentGiftRes.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/ui/customer/friend_gift/FriendGiftViewModel.dart';
import 'package:provider/provider.dart';

import '../../../constants/AppColors.dart';
import '../../../core/di/Injection.dart';
import '../../../main.dart';
import 'GiftItem.dart';

class FriendGiftScreen extends StatelessWidget {

  final FriendGiftViewModel _viewModel = getIt<FriendGiftViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary, elevation: 1,
        title: Text('You sent these gifts'),
      ),
      body: ChangeNotifierProvider(
        create: (_) => _viewModel,
        child: Consumer<FriendGiftViewModel> (
          builder: (context, viewModel, _) {
            return ListView.builder(
                shrinkWrap: false,
                itemCount: viewModel.gifts.length,
                itemBuilder: (context, index) {
                  return GiftItem(viewModel.gifts[index], () {
                    _showPaymentMethodDialog(index);
                  });
                }
            );
          },
        ),
      ),
    );
  }

  _showPaymentMethodDialog(int index) {
    showDialog(
        context: appRouter.root.navigatorKey.currentContext!,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  20.toVerticalSizedBox,
                  'Paypal'.toTextButton(() {
                    appRouter.pop();
                    _viewModel.sendGift(index);
                  }, width: double.infinity),

                  'Credit card'.toTextButton(() {
                    appRouter.pop();
                    _viewModel.sendGift(index);
                  }, width: double.infinity),

                  'Mobile Money'.toTextButton(() {
                    appRouter.pop();
                    _viewModel.sendGift(index);
                  }, width: double.infinity),
                  'Crypto'.toTextButton(() {
                    appRouter.pop();
                    _viewModel.sendGift(index);
                  }, width: double.infinity),
                  20.toVerticalSizedBox,
                ],
              ),
            ),
          );
        }
    );
  }
}
