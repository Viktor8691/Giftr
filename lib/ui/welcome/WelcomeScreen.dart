import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/main.dart';

import '../../constants/AppColors.dart';
import '../../core/routes/Route.gr.dart';
import 'WelcomeViewModel.dart';

class WelcomeScreen extends StatelessWidget {

  final WelcomeViewModel _viewModel = getIt<WelcomeViewModel>();

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(milliseconds: 2000), (){
      if (_viewModel.isUserLoggedIn) {
        if (appUser?.type == CUSTOMER){
          appRouter.pushAndPopUntil(CustomerMainScreenRoute(), predicate: (f) => false);
        }
        if (appUser?.type == MERCHANT){
          appRouter.pushAndPopUntil(MerchantMainScreenRoute(), predicate: (f) => false);
        }
      }else {
        appRouter.pushAndPopUntil(LoginScreenRoute(), predicate: (f) => false);
      }
    });

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: Center(
        child: Image.asset('assets/image/app_logo.png')
      ),
    );
  }
}
