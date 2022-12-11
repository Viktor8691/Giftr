import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/main.dart';
import 'package:giftr/ui/user_management/login/LoginViewModel.dart';
import 'package:giftr/utils/Utils.dart';

import '../../../constants/AppColors.dart';
import '../../../constants/AppConstants.dart';
import '../../../core/routes/Route.gr.dart';

class LoginScreen extends StatelessWidget {

  final LoginViewModel _viewModel = getIt<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              80.toVerticalSizedBox,
              'assets/image/app_logo.png'.toAssetImage(),

              50.toVerticalSizedBox,
              'Email'.toTextField((value) {
                _viewModel.email = value;
              }, inputType: TextInputType.emailAddress),

              30.toVerticalSizedBox,
              'Password'.toTextField((value) {
                _viewModel.password = value;
              }, isObscureText : true),

              50.toVerticalSizedBox,
              'Log In'.toButton(() {
                _viewModel.login();
              }, width: double.infinity),

              20.toVerticalSizedBox,
              'Forgot Password?'.toTextButton(() {

              }),

              20.toVerticalSizedBox,
              1.toHLine,

              50.toVerticalSizedBox,
              'Create New Account'.toButton(() {
                _selectUserTypeDialog(context);
              }, width: double.infinity, color: AppColors.green),
              20.toVerticalSizedBox,
            ],
          ),
        ),
      ),
    );
  }

  void _selectUserTypeDialog(BuildContext context){
    showDialog(
        context: context,
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
                  'Signup As'.toText(fontSize: 18, isBold: true),

                  20.toVerticalSizedBox,
                  'User'.toTextButton(() {
                    appRouter.pop();
                    appRouter.push(SignupScreenRoute(userType: CUSTOMER));
                  }, width: double.infinity),
                  'Merchant'.toTextButton(() {
                    appRouter.pop();
                    appRouter.push(SignupScreenRoute(userType: MERCHANT));
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
