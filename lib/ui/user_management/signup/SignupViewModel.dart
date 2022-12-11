import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/main.dart';
import 'package:giftr/utils/Utils.dart';
import 'package:injectable/injectable.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rxdart/rxdart.dart';

import '../../../core/data/network/module/auth/SignupReq.dart';
import '../../../core/routes/Route.gr.dart';
import 'SignupInteractor.dart';

@injectable
class SignupViewModel extends BaseViewModel {

  final SignupInteractor _interactor;
  SignupViewModel(this._interactor);

  String firstName = '', lastName = '', email = '', password = '', confirmPassword = '', userType = '';

  bool isPhoneValid = false;
  PhoneNumber? phoneNumber;

  @override
  void init() {}

  void signup() async {
    if (_checkFormValidate() == false) return;
    final request = SignupReq(
        '$firstName $lastName',
        email,
        password,
        phoneNumber!.phoneNumber!,
        userType);

    final response = await _interactor.signup(request);
    response?.let((it) {
      appRouter.push(OTPScreenRoute(signupRes: it));
    });
  }

  bool _checkFormValidate() {
    if (firstName.isEmpty) {
      showMyAlertDialog('Error', 'Please input First name');
      return false;
    }
    if (lastName.isEmpty){
      showMyAlertDialog('Error', 'Please input Last name');
      return false;
    }
    if (!isPhoneValid) {
      showMyAlertDialog('Error', 'Phone number is wrong');
      return false;
    }
    if (password.isEmpty){
      showMyAlertDialog('Error', 'Please input Password');
      return false;
    }
    if (confirmPassword.isEmpty || password != confirmPassword){
      showMyAlertDialog('Error', 'Passwords does not matched');
      return false;
    }
    return true;
  }

}