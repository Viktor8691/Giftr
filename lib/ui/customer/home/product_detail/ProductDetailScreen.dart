import 'package:flutter/material.dart';
import 'package:giftr/constants/AppColors.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/extension/WidgetExtension.dart';
import 'package:giftr/main.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../../../core/routes/Route.gr.dart';
import 'ProductDetailViewModel.dart';

class ProductDetailScreen extends StatelessWidget {

  final ProductDetailViewModel _viewModel = getIt<ProductDetailViewModel>();
  ProductDetailScreen(product) {
    _viewModel.product = product;
  }

  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary, elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.toVerticalSizedBox,
            SizedBox(
              width: double.infinity, height: 250,
              child: PageView.builder(
                  onPageChanged: (value){_currentPageNotifier.value = value;},
                  controller: _pageController,
                  itemCount: _viewModel.product.product_images.length,
                  itemBuilder: (context, index) {
                    return '${_viewModel.product.product_images[index]}'.toNetworkImage(width: double.infinity, height: 250);
                  }),
            ),
            10.toVerticalSizedBox,
            Center(
              child: CirclePageIndicator(
                dotSpacing: 10,
                itemCount: _viewModel.product.product_images.length,
                currentPageNotifier: _currentPageNotifier,
                selectedDotColor: AppColors.colorPrimary,
                dotColor: Colors.black26,
              ),
            ),
            10.toVerticalSizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _viewModel.product.product_name.toText(fontSize: 18, color: Colors.orange, isBold: true),
                '${_viewModel.product.currency} ${_viewModel.product.prize}'.toText(fontSize: 25, isBold: true)
              ],
            ),
            20.toVerticalSizedBox,
            _viewModel.product.description.toText(),

            100.toVerticalSizedBox,
            'Gift This Offer'.toButton(() {
              appRouter.push(ContactListScreenRoute(product: _viewModel.product));
            }, width: context.getScreenSize.width * 0.5).toCenter()
          ],
        ),
      ),
    );
  }
}
