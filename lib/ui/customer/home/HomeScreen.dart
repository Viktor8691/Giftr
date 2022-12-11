import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giftr/constants/AppColors.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:giftr/main.dart';
import 'package:provider/provider.dart';

import '../../../core/routes/Route.gr.dart';
import 'HomeViewModel.dart';
import 'ProductItem.dart';

class HomeScreen extends StatelessWidget {

  final HomeViewModel viewModel = getIt<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: viewModel,
      child: Consumer<HomeViewModel>(
        builder: (context, viewModel, _) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.colorPrimary, elevation: 1,
              title: 'Search'.toSearchBar(),
              actions: [
                IconButton(onPressed: () {
                  appRouter.push(CustomerNotiScreenRoute(data: viewModel.notifications));
                }, icon: Badge(
                  elevation: 0,
                  showBadge: viewModel.notifications.isNotEmpty,
                  toAnimate: false,
                  badgeContent: Text(viewModel.notifications.length.toString(), style: TextStyle(color: Colors.white),),
                  child: Icon(Icons.notifications),)),
                Icon(Icons.account_circle_outlined, size: 40,)
              ],
            ),
            body: MasonryGridView.count(
              itemCount: viewModel.products.length,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () => appRouter.push(ProductDetailScreenRoute(product: viewModel.products[index])),
                    child: ProductItem(viewModel.products[index]));
              },
            )
          );
        },
      ),
    );
  }
}