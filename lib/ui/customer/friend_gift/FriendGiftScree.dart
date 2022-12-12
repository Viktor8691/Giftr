import 'package:flutter/material.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetSentGiftRes.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/ui/customer/friend_gift/FriendGiftViewModel.dart';
import 'package:provider/provider.dart';

import '../../../constants/AppColors.dart';
import '../../../core/di/Injection.dart';
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
                    print('send again ==> $index');
                  });
                }
            );
          },
        ),
      ),
    );
  }
}
