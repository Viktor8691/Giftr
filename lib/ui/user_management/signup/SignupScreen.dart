import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/core/routes/Route.gr.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/extension/WidgetExtension.dart';
import 'package:giftr/main.dart';
import 'package:giftr/ui/user_management/signup/SignupViewModel.dart';
import 'package:intl/intl.dart';
import '../../../constants/AppConstants.dart';

class SignupScreen extends StatefulWidget {

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  SignupViewModel _viewModel = getIt<SignupViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, elevation: 1,
        iconTheme: IconThemeData(color: Colors.black45),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Sign up', style: TextStyle(color: Colors.black45),),
            Text('It is quick and easy.', style: TextStyle(color: Colors.black45, fontSize: 17),)
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.toVerticalSizedBox,
              'Your name'.toTextField((value) {}),

              20.toVerticalSizedBox,
              'Last name'.toTextField((value) {}),

              20.toVerticalSizedBox,
              'info@example.com'.toTextField((p0) {

              }, inputType: TextInputType.emailAddress),

              20.toVerticalSizedBox,
              'Password'.toTextField((p0)  {

              }, isObscureText: true),

              20.toVerticalSizedBox,
              'Gender'.toText(),

              5.toVerticalSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _viewModel.gender.name.toText(),
                  IconButton(onPressed: () {
                    _showGenderPopup(context, (value) {
                      setState(() {
                        _viewModel.gender = value;
                      });
                    });
                  }, icon: Icon(Icons.keyboard_arrow_down_outlined))
                ],
              ).toOutlineContainer(padding: EdgeInsets.only(left: 15)),

              20.toVerticalSizedBox,
              'Phone number : required'.toTextField((p0) {

              }, inputType: TextInputType.phone),

              20.toVerticalSizedBox,
              'Your birthday : required'.toText(),

              5.toVerticalSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _viewModel.birthday.toText(),
                  IconButton(onPressed: () async {
                    DateTime? pickedDate = await showDatePicker(context: context,
                        initialDate: DateTime.now(), //get today's date
                        firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));

                    pickedDate?.let ((it) {
                      setState(() {
                        _viewModel.birthday = DateFormat('MM-dd-yy').format(it);
                      });
                    });

                  }, icon: Icon(Icons.calendar_month_outlined))
                ],
              ).toOutlineContainer(padding: EdgeInsets.only(left: 15)),

              20.toVerticalSizedBox,
              RichText(text: TextSpan(
                style: TextStyle(fontSize: 13,color: Colors.black87),
                children: [
                  TextSpan(text: 'By clicking Sign Up, you agree to our '),
                  TextSpan(text: 'Terms, Data Policy and Cookies Policy.', style: TextStyle(color: Colors.blueAccent), recognizer: TapGestureRecognizer()..onTap = () async {

                  }),
                  TextSpan(text: 'You may receive SMS and emails Notifications from us and can opt out any time.')
                ]
              )),

              30.toVerticalSizedBox,
              Center(
                child: 'Get Started'.toButton(() {
                  appRouter.pushAndPopUntil(MainScreenRoute(), predicate: (f) => false);
                }, width: double.infinity),
              ),
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
