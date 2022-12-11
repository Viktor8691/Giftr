import 'package:flutter/material.dart';
import 'package:giftr/core/data/network/module/customer/product/GetProductRes.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/extension/WidgetExtension.dart';
import 'package:giftr/main.dart';
import 'package:provider/provider.dart';

import '../../../../constants/AppColors.dart';
import 'ContactItem.dart';
import 'ContactListViewModel.dart';


class ContactListScreen extends StatelessWidget {

  final ContactListViewModel _viewModel = getIt<ContactListViewModel>();

  ContactListScreen(Product product){
    _viewModel.product = product;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary, automaticallyImplyLeading: false, elevation: 1,
        title: 'Search'.toSearchBar(),
        actions: [
          'Cancel'.toTextButton(() {appRouter.pop();}, color: Colors.white)
        ],
      ),
      body: Column(
        children: [
          ChangeNotifierProvider(
              create: (_) => _viewModel,
            child: Consumer<ContactListViewModel> (
              builder: (context, viewModel, _) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: _viewModel.contacts.length,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: () => _viewModel.selectContact(index),
                          child: ContactItem(_viewModel.contacts[index]));
                    }).toFlexible();
              },
            ),
          ),
          10.toVerticalSizedBox,
          'Confirm'.toButton(() {_showPaymentMethodDialog();}, width: context.getScreenSize.width * 0.6),
          20.toVerticalSizedBox,
        ],
      ),
    );
  }

  _showPaymentMethodDialog() {
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
                    _viewModel.confirm();
                  }, width: double.infinity),

                  'Credit card'.toTextButton(() {
                    appRouter.pop();
                    _viewModel.confirm();
                  }, width: double.infinity),

                  'Mobile Money'.toTextButton(() {
                    appRouter.pop();
                    _viewModel.confirm();
                  }, width: double.infinity),
                  'Crypto'.toTextButton(() {
                    appRouter.pop();
                    _viewModel.confirm();
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
