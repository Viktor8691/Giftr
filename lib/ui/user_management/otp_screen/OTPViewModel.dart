import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/auth/SignupReq.dart';
import 'package:giftr/core/data/network/module/auth/SignupRes.dart';
import 'package:giftr/core/data/network/module/auth/VerifyOTPReq.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/main.dart';
import 'package:giftr/ui/user_management/otp_screen/OTPInteractor.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/session/ISessionHelper.dart';
import '../../../core/routes/Route.gr.dart';

@injectable
class OTPViewModel extends BaseViewModel {

  final OTPInteractor _interactor;
  final ISessionHelper _sessionHelper;

  OTPViewModel(this._interactor, this._sessionHelper);

  SignupRes? signupRes;

  @override
  void init() {}

  void otpVerify(String otpCode) async{
    final request = VerifyOTPReq(otpCode, signupRes!.data.user_details.id.toString());
    final response = await _interactor.otpVerify(request);
    response?.let((it){
      appUser = signupRes!.data.user_details;
      _sessionHelper.saveUser(appUser!);
      if (appUser!.type == CUSTOMER) {
        appRouter.pushAndPopUntil(CustomerMainScreenRoute(), predicate: (f) => false);
      }
      if (appUser!.type == MERCHANT){
        appRouter.pushAndPopUntil(MerchantMainScreenRoute(), predicate: (f) => false);
      }
    });
  }

  void resendCode() async {
    final user = signupRes!.data.user_details;
    final request = SignupReq(user.name, user.email, user.password, user.phone_no, user.type);
    final response = await _interactor.resendOtp(request);
    response?.let((it) {
      appUser = it.data.user_details;
      signupRes = it;
      'Verify code resent'.showToast;
    });
  }
}