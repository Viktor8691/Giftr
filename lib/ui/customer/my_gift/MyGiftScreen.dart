import 'package:flutter/material.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/ui/customer/my_gift/MyGiftViewModel.dart';
import 'package:provider/provider.dart';
import '../../../constants/AppColors.dart';
import 'GiftItem.dart';

class MyGiftScreen extends StatelessWidget {

  final MyGiftViewModel _viewModel = getIt<MyGiftViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary, elevation: 1,
        title: Text('You received these gifts'),
      ),
      body: ChangeNotifierProvider(
        create: (_) => _viewModel,
        child: Consumer<MyGiftViewModel> (
          builder: (context, viewModel, _) {
            return ListView.builder(
              shrinkWrap: false,
                itemCount: viewModel.gifts.length,
                itemBuilder: (context, index) {
                  return GiftItem(viewModel.gifts[index]);
                }
            );
          },
        ),
      ),
    );
  }
}
