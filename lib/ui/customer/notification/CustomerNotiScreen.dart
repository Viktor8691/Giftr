import 'package:flutter/material.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/main.dart';
import 'package:giftr/ui/customer/notification/CustomerNotiViewModel.dart';
import 'package:provider/provider.dart';

import '../../../constants/AppColors.dart';
import '../../../core/data/network/module/notification/GetCustomerNotiRes.dart' as noti;
import 'NotiItem.dart';

class CustomerNotiScreen extends StatelessWidget {

  final CustomerNotiViewModel _viewModel = getIt<CustomerNotiViewModel>();

  CustomerNotiScreen(List<noti.Notification> data){
    _viewModel.notifications = data;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        appRouter.pop(_viewModel.notifications);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
          backgroundColor: AppColors.colorPrimary, elevation: 1,
        ),
        body: ChangeNotifierProvider(
          create: (_) => _viewModel,
          child: Consumer<CustomerNotiViewModel> (
            builder: (context, viewModel, _) {
              return ListView.builder(
                  shrinkWrap: false,
                  itemCount: viewModel.notifications.length,
                  itemBuilder: (context, index){
                    return NotiItem(viewModel.notifications[index], onDelete: () {
                      viewModel.deleteNotification(index);
                    });
                  }
              );
            },
          ),
        ),
      ),
    );
  }

}
