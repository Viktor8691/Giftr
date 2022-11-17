import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/main.dart';
import 'package:giftr/utils/Utils.dart';

import '../../../constants/AppColors.dart';
import '../../../core/routes/Route.gr.dart';

class LoginScreen extends StatelessWidget {

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
              'Email or Phone Number'.toTextField((value) {
              }, inputType: TextInputType.emailAddress),

              30.toVerticalSizedBox,
              'Password'.toTextField((value) {
              }, isObscureText : true),

              50.toVerticalSizedBox,
              'Log In'.toButton(() {
                appRouter.pushAndPopUntil(MainScreenRoute(), predicate: (f) => false);
              }, width: double.infinity),

              20.toVerticalSizedBox,
              'Forgot Password?'.toTextButton(() {

              }),

              20.toVerticalSizedBox,
              1.toHLine,

              50.toVerticalSizedBox,
              'Create New Account'.toButton(() {
                appRouter.push(SignupScreenRoute());
              }, width: double.infinity, color: AppColors.green),
              20.toVerticalSizedBox,
            ],
          ),
        ),
      ),
    );
  }
}
