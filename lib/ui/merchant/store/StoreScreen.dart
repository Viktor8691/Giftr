import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/ui/merchant/store/StoreViewModel.dart';
import 'package:provider/provider.dart';

import '../../../constants/AppColors.dart';
import 'StoreItem.dart';


class StoreScreen extends StatelessWidget {

  final StoreViewModel _viewModel = getIt<StoreViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.colorPrimary, elevation: 1,
          title: 'Search'.toSearchBar(),
          actions: [
            IconButton(onPressed: () {

            }, icon: Icon(Icons.notifications)),
            Icon(Icons.account_circle_outlined, size: 40,)
          ],
        ),
        body: ChangeNotifierProvider(
          create: (_) => _viewModel,
          child: Consumer<StoreViewModel>(
            builder: (context, viewModel, _) {
              return MasonryGridView.count(
                itemCount: viewModel.products.length,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                itemBuilder: (context, index) {
                  return StoreItem(viewModel.products[index]);
                },
              );
            },
          ),
        )
    );
  }
}
