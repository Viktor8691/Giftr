import 'package:flutter/material.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/extension/WidgetExtension.dart';
import 'package:giftr/main.dart';
import 'package:giftr/ui/user_management/signup/SignupViewModel.dart';
import '../../../constants/AppConstants.dart';


class SignupScreen extends StatelessWidget {

  SignupViewModel _viewModel = getIt<SignupViewModel>();

  SignupScreen(String userType) { // 1-user, 2-merchant
    _viewModel.userType = userType.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, elevation: 1,
        iconTheme: IconThemeData(color: Colors.blue),
        title: Text('Sign up', style: TextStyle(color: Colors.blue),),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.toVerticalSizedBox,
              'First name'.toTextField((value) {
                _viewModel.firstName = value;
              }),

              20.toVerticalSizedBox,
              'Last name'.toTextField((value) {
                _viewModel.lastName = value;
              }),

              20.toVerticalSizedBox,
              'info@example.com'.toTextField((value) {
                _viewModel.email = value;
              }, inputType: TextInputType.emailAddress),

              20.toVerticalSizedBox,
              phoneNumberInput(onInputValidated: (value){
                _viewModel.isPhoneValid = value;
              }, onInputChanged: (value) {
                _viewModel.phoneNumber = value;
              }),

              20.toVerticalSizedBox,
              'Password'.toTextField((value)  {
                _viewModel.password = value;
              }, isObscureText: true),

              20.toVerticalSizedBox,
              'Confirm password'.toTextField((value)  {
                _viewModel.confirmPassword = value;
              }, isObscureText: true),

              20.toVerticalSizedBox,
              RichText(text: TextSpan(
                style: TextStyle(fontSize: 13,color: Colors.black87),
                children: [
                  'By clicking Sign Up, you agree to our '.toTextSpan(),
                  'Terms, Data Policy and Cookies Policy.'.toTextSpan(style: TextStyle(color: Colors.blueAccent), onTap: () {

                  }),
                  'You may receive SMS and emails Notifications from us and can opt out any time.'.toTextSpan()
                ]
              )),

              30.toVerticalSizedBox,
              'Get Started'.toButton(() {
                _viewModel.signup();
              }, width: double.infinity),
              50.toVerticalSizedBox
            ],
          ),
        ),
      ),
    );
  }

  void _showGenderPopup(BuildContext context, Function(Gender) onSelected){
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
                  'Male'.toTextButton(() {
                    onSelected(Gender.Male);
                    appRouter.pop();
                  }, width: double.infinity),
                  10.toVerticalSizedBox,
                  'Female'.toTextButton(() {
                    onSelected(Gender.Female);
                    appRouter.pop();
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
