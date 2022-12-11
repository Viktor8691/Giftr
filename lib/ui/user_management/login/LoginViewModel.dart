import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/auth/LoginReq.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/main.dart';
import 'package:giftr/ui/user_management/login/LoginInteractor.dart';
import 'package:giftr/utils/Utils.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/session/ISessionHelper.dart';
import '../../../core/routes/Route.gr.dart';

@injectable
class LoginViewModel extends BaseViewModel {

  final LoginInteractor _interactor;
  final ISessionHelper _sessionHelper;

  LoginViewModel(this._interactor, this._sessionHelper);

  String email = '', password = '';

  @override
  void init() {}

  void login() async {
    if (!_isFormValidate()) return;
    final request = LoginReq(email, password);
    final user = await _interactor.login(request);
    user?.let((it) {
      appUser = it;
      _sessionHelper.saveUser(it);
      if (it.type == CUSTOMER){
        appRouter.pushAndPopUntil(CustomerMainScreenRoute(), predicate: (f) => false);
      }
      if (it.type == MERCHANT){
        appRouter.pushAndPopUntil(MerchantMainScreenRoute(), predicate: (f) => false);
      }
    });
  }

  bool _isFormValidate(){
    if (email.isEmpty){
      showMyAlertDialog('Error', 'Please input email');
      return false;
    }
    if (password.isEmpty){
      showMyAlertDialog('Error', 'Please input password');
      return false;
    }

    return true;
  }
}