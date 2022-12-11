import 'package:flutter/material.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/ui/customer/notification/CustomerNotiViewModel.dart';
import '../../../core/data/network/module/notification/GetCustomerNotiRes.dart' as noti;

class CustomerNotiScreen extends StatelessWidget {

  final CustomerNotiViewModel _viewModel = getIt<CustomerNotiViewModel>();

  CustomerNotiScreen(List<noti.Notification> data){

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

}
