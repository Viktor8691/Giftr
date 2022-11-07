import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/core/routes/Route.gr.dart';
import 'package:giftr/main.dart';

import '../../constants/AppColors.dart';
import 'WelcomeViewModel.dart';

class WelcomeScreen extends StatelessWidget {

  final WelcomeViewModel _viewModel = getIt<WelcomeViewModel>();

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(milliseconds: 2000), (){
      if (_viewModel.isUserLoggedIn) {

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
