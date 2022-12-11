import 'package:flutter/material.dart';
import 'package:giftr/constants/AppColors.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/main.dart';
import 'package:giftr/ui/user_management/otp_screen/OTPViewModel.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/data/network/module/auth/SignupRes.dart';

class OTPScreen extends StatelessWidget {

  OTPScreen(SignupRes signupRes) {
    _viewModel.signupRes = signupRes;
  }

  final OTPViewModel _viewModel = getIt<OTPViewModel>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary, elevation: 1,
        title: Text('OPT Validate'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            50.toVerticalSizedBox,
            'OTP code sent to your phone'.toText(fontSize: 17),

            5.toVerticalSizedBox,
            _viewModel.signupRes!.data.user_details.phone_no.toText(fontSize: 20, isBold: true),

            20.toVerticalSizedBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PinCodeTextField(
                  appContext: context,
                  keyboardType: TextInputType.number,
                  length: 4,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    activeColor: Colors.blue
                  ),
                  onCompleted: (value){
                    _viewModel.otpVerify(value);
                  },
                  onChanged: (value) {}),
            ),

            60.toVerticalSizedBox,
            'Did you not receive verify code ?'.toText(),
            20.toVerticalSizedBox,
            'Resend'.toButton(() {
              _viewModel.resendCode();
            }, width: context.getScreenSize.width * 0.4)
          ],
        ),
      ),
    );
  }
}
